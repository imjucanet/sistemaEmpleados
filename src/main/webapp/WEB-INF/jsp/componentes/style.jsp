<style>
    /* Calmer, softer theme */
    :root {
        --bg: #f6f7f9;
        --card: #ffffff;
        --muted: #6b7280; /* gray-500 */
        --accent: #7aa7a1; /* soft teal */
        --accent-2: #a3c7bd; /* lighter */
        --accent-contrast: #ffffff;
        --radius: 10px;
        --shadow: 0 6px 18px rgba(15, 23, 42, 0.06);
    }

    body {
        background: var(--bg);
        min-height: 100vh;
        font-family: "Segoe UI", Tahoma, Geneva, Verdana, sans-serif;
        color: #0f172a;
        margin: 0;
    }

    .container {
        padding-top: 2rem;
        max-width: 900px;
        margin: 0 auto;
    }

    .page-title {
        margin: 0 0 1rem;
        background: linear-gradient(90deg, var(--accent) 0%, var(--accent-2) 100%);
        color: var(--accent-contrast);
        font-weight: 600;
        border-radius: var(--radius);
        padding: 0.75rem 1rem;
        letter-spacing: 0.01em;
        box-shadow: var(--shadow);
    }

    .motion-navbar {
        background: rgba(255, 255, 255, 0.6);
        border: 1px solid rgba(15, 23, 42, 0.06);
        border-radius: 14px;
        box-shadow: var(--shadow);
        padding: 0.6rem 0.9rem;
    }

    .brand-mark {
        width: 38px;
        height: 38px;
        border-radius: 8px;
        background: var(--accent);
        color: white;
        display: inline-flex;
        align-items: center;
        justify-content: center;
        font-weight: 700;
        margin-right: 0.6rem;
    }

    .brand-text {
        font-size: 1rem;
        font-weight: 600;
        color: #14313a;
    }

    .navbar-nav {
        gap: 0.5rem;
    }

    .nav-link {
        color: var(--muted) !important;
        font-weight: 600;
        padding: 0.55rem 0.9rem !important;
        border-radius: 8px;
        transition: background 0.18s ease, transform 0.12s ease;
    }

    .nav-link:hover, .nav-link:focus {
        background: rgba(122, 167, 161, 0.08);
        color: #0f172a !important;
        transform: translateY(-1px);
    }

    .nav-link.active {
        background: rgba(122, 167, 161, 0.14);
        color: #0f172a !important;
    }

    /* Navbar toggler visibility for responsive */
    .navbar-toggler {
        border: 1px solid rgba(15, 23, 42, 0.06);
        background: transparent;
        padding: 0.25rem 0.45rem;
        border-radius: 8px;
        display: inline-flex;
        align-items: center;
        justify-content: center;
    }

    .navbar-toggler-icon {
        width: 1.2rem;
        height: 1.2rem;
        background-repeat: no-repeat;
        background-position: center;
        background-size: 20px 20px;
        /* SVG uses the theme color (#14313a) encoded as %2314313a */
        background-image: url("data:image/svg+xml;utf8,<svg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 30 30' stroke='%2314313a' fill='none' stroke-linecap='round' stroke-width='2'><path d='M4 7h22M4 15h22M4 23h22'/></svg>");
    }

    .navbar-toggler:focus, .navbar-toggler:hover {
        box-shadow: 0 6px 14px rgba(15, 23, 42, 0.06);
    }

    .container-tabla {
        margin-top: 1.5rem;
        background: var(--card);
        border: 1px solid rgba(15, 23, 42, 0.04);
        border-radius: 12px;
        padding: 0.75rem;
        box-shadow: var(--shadow);
    }

    .table thead th {
        background: transparent;
        color: #0f172a;
        border-bottom: 1px solid rgba(15, 23, 42, 0.06);
        font-size: 0.82rem;
        padding: 0.8rem 0.75rem;
        text-transform: none;
    }

    .table tbody td {
        padding: 0.65rem 0.75rem;
        color: #1f2a2a;
        vertical-align: middle;
    }

    /* Form styles (applies to agregarEmpleado.jsp) */
    form {
        background: var(--card);
        border-radius: 12px;
        padding: 1.25rem;
        box-shadow: var(--shadow);
        border: 1px solid rgba(15, 23, 42, 0.04);
    }

    form h3 {
        margin-top: 0;
    }

    .mb-3 {
        margin-bottom: 1rem;
    }

    label.form-label {
        display: block;
        margin-bottom: 0.35rem;
        color: #374151;
        font-weight: 600;
        font-size: 0.95rem;
    }

    .form-control {
        display: block;
        width: 100%;
        padding: 0.6rem 0.75rem;
        font-size: 0.95rem;
        color: #0f172a;
        background: #fbfdfe;
        border: 1px solid rgba(15, 23, 42, 0.06);
        border-radius: 8px;
        box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.6);
        transition: box-shadow 0.12s ease, border-color 0.12s ease;
    }

    .form-control:focus {
        outline: none;
        border-color: var(--accent);
        box-shadow: 0 4px 18px rgba(122, 167, 161, 0.12);
        background: #fff;
    }

    .text-center {
        text-align: center;
    }

    /* Buttons */
    .btn {
        border-radius: 8px;
        padding: 0.45rem 0.9rem;
        font-weight: 600;
    }

    .btn-warning {
        background: linear-gradient(90deg, var(--accent) 0%, var(--accent-2) 100%);
        border: none;
        color: var(--accent-contrast);
    }

    .btn-danger {
        background: #ef4444;
        border: none;
        color: #fff;
    }

    .btn:hover {
        opacity: 0.95;
        transform: translateY(-1px);
    }

    @media (max-width: 767px) {
        .container {
            padding: 1rem;
        }

        form {
            padding: 1rem;
        }

        .brand-text {
            display: none;
        }
    }
</style>