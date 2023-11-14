<template>
  <div :class="$style.container">
    <div :class="$style.top">
      <common-bordered-text text="Контактная форма"/>
    </div>
    <form :class="$style.middle" @submit.prevent="pay">
      <div :class="$style.input">
        <label for="name"><span :class="$style.text">Имя</span></label>
        <input type="text" id="name" placeholder="Артур" v-model="name" required />
      </div>
      <div :class="$style.input">
        <label for="mail"><span :class="$style.text">Почта</span></label>
        <input type="email" id="mail" placeholder="name@mail.ru" v-model="email" required @blur="checkEmailExists()" />
      </div>
      <button :class="$style.submit">
        <span :class="$style.text">Приобрести курс</span>
        <icon-plus :class="$style.icon" color="#FFFFFF" fill="#E47138"/>
      </button>
      <p :class="$style.small"><span :class="$style.t">* после оплаты на почту придет письмо. <br>Не забывайте смотреть папки спам/рассылки</span></p>
    </form>
    <div :class="$style.bottom">
      <div>
        <p :class="$style.write"><span :class="$style.text">Пишите на почту</span></p>
        <ui-button :class="$style.email" href="mailto: friends@sth-edu.ru"><span :class="$style.text">friends@sth-edu.ru</span></ui-button>
      </div>
      <ui-button href="https://t.me/sthtrade">
        <div :class="$style.button">
          <span :class="$style.text">Написать в телеграм</span>
          <icon-arrow-control :class="$style.icon" fill="#E47138" color="#F4F4F4" />
          <ui-button :class="$style.absolute"/>
        </div>
      </ui-button>
    </div>
  </div>
</template>

<script>
  import CommonBorderedText from '~/components/common/bordered-text'
  import UiButton from '~/components/ui/button'
  import IconArrowControl from '~/components/icons/arrow-control'
  import IconPlus from '~/components/icons/plus'

  export default {
    name: 'EndForm',
    components: {
      IconPlus,
      IconArrowControl,
      UiButton,
      CommonBorderedText
    },
    data() {
      return {
        name: '',
        email: ''
      }
    },
    methods: {
      async checkPaymentAndAddUser(invoiceId) {
        await this.$axios.$post('/check_payments', {
          email: this.email,
          first_name: this.name,
          token: invoiceId
        })
      },
      rand () {
        return Math.random().toString(36).substr(2)
      },
      token () {
        return this.rand() + this.rand()
      },
      async checkEmailExists () {
        const res = await this.$axios.$post('/exists', { email: this.email })
        return res.success
      },
      async pay() {
        if (!await this.checkEmailExists()) {
          const checkPaymentAndAddUser = this.checkPaymentAndAddUser
          // eslint-disable-next-line
          const widget = new cp.CloudPayments()
          widget.pay('charge',
            {
              publicId: 'pk_e8e9e565410fa33e3bb57783172b8',
              description: 'Оплата курса StartTheHistory в trade-study.ru',
              amount: 4400,
              currency: 'RUB',
              accountId: this.email,
              invoiceId: this.token(),
              skin: 'modern',
              data: {
                myProp: 'myProp value',
                CloudPayments: {
                  CustomerReceipt: {
                    Items: [{
                      label: 'Курс от trade-study', // наименование товара
                      price: 4400.00, // цена
                      quantity: 1.00, // количество
                      amount: 4400.00, // сумма
                      vat: 0, // ставка НДС
                      method: 0, // тег-1214 признак способа расчета - признак способа расчета
                      object: 0, // тег-1212 признак предмета расчета - признак предмета товара, работы, услуги, платежа, выплаты, иного предмета расчета
                      measurementUnit: 'шт' // единица измерения
                    }
                    ],
                    calculationPlace: 'https://trade-study.ru', // место осуществления расчёта, по умолчанию берется значение из кассы
                    taxationSystem: 1, // система налогообложения; необязательный, если у вас одна система налогообложения
                    email: this.email, // e-mail покупателя, если нужно отправить письмо с чеком
                    phone: '', // телефон покупателя в любом формате, если нужно отправить сообщение со ссылкой на чек
                    isBso: false, // чек является бланком строгой отчётности
                    AgentSign: null, // признак агента, тег ОФД 1057
                    amounts: {
                      electronic: 4400.00, // Сумма оплаты электронными деньгами
                      advancePayment: 0.00, // Сумма из предоплаты (зачетом аванса) (2 знака после запятой)
                      credit: 0.00, // Сумма постоплатой(в кредит) (2 знака после запятой)
                      provision: 0.00 // Сумма оплаты встречным предоставлением (сертификаты, др. мат.ценности) (2 знака после запятой)
                    }
                  }
                }
              }
            }, {
              onComplete(paymentResult, options) {
                if (paymentResult.success) {
                  checkPaymentAndAddUser(options.invoiceId)
                }
              }
            }
          )
        } else {
          alert('Email занят')
        }
      }
    }
  }
</script>

<style lang="scss" module>
  .container {
    width: 100%;
    background: #272727;
    border-radius: 0 2.5em 2.5em 0;
    @include down(xxl) {
      border-radius: 0 0 2.5em 2.5em;
    }
  }
  .top {
    padding: 3.2em;
    background: #2F2F2F;
    border-radius: 0 2.5em 0 0;
    @include down(xxl) {
      display: none;
    }
  }
  .middle {
    padding: 0 3.2em;
    @include down(xxl) {
      padding: 3.2em 3.2em 0;
    }
    @include down(md) {
      padding: 2.4em 2.4em 0;
    }
  }
  .input {
    display: flex;
    align-items: center;
    padding: 3.2em 0;
    border-bottom: 1px solid rgba(255, 255, 255, 0.2);
    @include down(md) {
      padding: 2.4em 0;
    }
    label {
      color: var(--root-color-base-0);
      width: 33%;
      .text {
        font-weight: 500;
        font-size: 1.6em;
        line-height: 1.12;
        letter-spacing: -0.01em;
        @include down(md) {
          font-size: 1.4em;
          line-height: 1.14;
        }
      }
    }
    input {
      width: 100%;
      font-weight: 500;
      font-size: 3.2em;
      line-height: 1;
      letter-spacing: -0.03em;
      color: var(--root-color-base-0);
      background: none;
      outline: none;
      border: none;
      @include down(md) {
        font-size: 2.4em;
      }
      &::placeholder {
        color: #464646;
      }
    }
  }
  .submit {
    margin-top: 3.2em;
    padding: 0 3.2em;
    border-radius: 1.2em;
    height: 8em;
    display: flex;
    align-items: center;
    background: var(--root-color-base-0);
    font-weight: 500;
    @include down(md) {
      width: 100%;
      justify-content: space-between;
      height: 6em;
      padding: 0 2.4em;
    }
    .text {
      font-size: 2em;
      line-height: 1.1;
      letter-spacing: -0.01em;
      color: #000000;
      @include down(md) {
        font-size: 1.6em;
        line-height: 0.96;
      }
    }
    .icon {
      margin-left: 3.2em;
      width: 3.2em;
      height: 3.2em;
      @include down(xxl) {
        width: 2.4em;
        height: 2.4em;
      }
    }
  }
  .bottom {
    margin-top: 10em;
    padding: 0 3.2em 3.2em;
    display: flex;
    justify-content: space-between;
    align-items: flex-end;
    @include down(xxl) {
      margin-top: 6.4em;
    }
    @include down(md) {
      margin-top: 4.8em;
      flex-direction: column;
      align-items: flex-start;
      padding: 0 2.4em 2.4em;

    }
  }
  .write {
    color: rgba(255, 255, 255, 0.5);
    margin-bottom: .8em;
    .text {
      font-size: 1.6em;
      line-height: 1.12;
      letter-spacing: -0.01em;
      @include down(md) {
        font-size: 1.4em;
        line-height: 1.14;
      }
    }
  }
  .email {
    font-weight: 500;
    color: #F4F4F4;
    .text {
      font-size: 3em;
      line-height: 1.05;
      letter-spacing: -0.03em;
    }
  }
  .button {
    margin-top: 2.4em;
    color: var(--root-color-base-0);
    font-weight: 500;
    display: flex;
    align-items: center;
    position: relative;
    @include down(md) {
      margin-top: 3.2em;
    }
    .icon {
      transform: rotate(180deg);
      margin-left: .8em;
      width: 2.4em;
      height: 2.4em;
    }
    .text {
      font-size: 1.6em;
      line-height: 1.12;
      letter-spacing: -0.01em;
    }
    .absolute {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
    }
  }

  .small {
    margin-top: 2.4em;
    color: rgba(255, 255, 255, 0.5);
    .t {
      font-size: 1.4em;
    }
  }
</style>
