from django.conf import settings
from django.template.loader import render_to_string
from django.utils.html import strip_tags
from pysendpulse.pysendpulse import PySendPulse


def send_email(subject: str, template_name, email_context, from_email: str, to_email: list[str]) -> None:
    assert isinstance(to_email, list), "to_email is not list"

    html_message = render_to_string(
        template_name,
        context=email_context
    )
    email = {
        'subject': subject,
        'html': html_message,
        'text': strip_tags(html_message),
        'from': {'name': 'Start The History', 'email': from_email},
        'to': [
            {'name': email, 'email': email} for email in to_email
        ],
    }
    sp_api_proxy = PySendPulse(settings.REST_API_ID, settings.REST_API_SECRET, settings.TOKEN_STORAGE,
                               memcached_host=settings.MEMCACHED_HOST)
    sp_api_proxy.smtp_send_mail(email)
    print(f"[LOG] Send {subject} email to {to_email}")
