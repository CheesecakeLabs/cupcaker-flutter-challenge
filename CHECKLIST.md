# Cheesecake Checklist

### Best Pratices

- [ ] [Dependabot]()
- [ ] @administrators github team as role admin
- [ ] @cheesecakers github team as role write

### [Keeper](https://www.keepersecurity.com/)

- [ ] AWS credentials
- [ ] AWS PEM
- [ ] Google credentials
- [ ] Terraform env vars
- [ ] .ENV files

### GDPR

- [ ] Encrypt, pseudonymize, or anonymize personal data wherever possible
- [ ] All third party libraries are compliance with GDPR
- [ ] All files saved in storage (eg. AWS S3) has reference with user identifier
- [ ] It's easy for your customers to request and receive all the information you have about them
- [ ] It's easy for your customers to request to have their personal data deleted
- [ ] Terms are editable and acceptance are persisted in the database

### Quality

- [ ] [pre-commit gjira installed](https://github.com/benmezger/gjira)
- [ ] [Commit Lint](https://github.com/conventional-changelog/commitlint)

## BACKEND

### Documentation

- [ ] [Infrastructure diagram]()
- [ ] [Entity-Relationship diagram]()
- [ ] [Architecture definitions document]()
- [ ] [Updated API document/swagger]()

### Security

- [ ] [SSL]()
- [ ] [Cors]()

### CI/CD

- [ ] [CircleCI](https://circleci.com/docs/2.0/status-badges/#creating-badges-for-private-repositories)
<!-- [![CircleCI](https://circleci.com/<VCS>/<ORG_NAME>/<PROJECT_NAME>.svg?style=svg&circle-token=<YOUR_STATUS_API_TOKEN> -->
- [ ] [All environments are deploying: lab, stg, prod (using terraform)]()
- [ ] [Production deploy is listening to tag]

## PYTHON

### Linters

- [ ] [Black configured]()

### Optimization

- [ ] [Versatile image field](https://github.com/respondcreate/django-versatileimagefield)
- [ ] [Gunicorn in all environments except local]()
- [ ] [DEBUG = TRUE in lab and = FALSE in stg/prod]()

<!-- -->

## FRONTEND

### Code Quality

- [ ] [RUN Style Lint](https://stylelint.io/)
- [ ] [RUN JS Lint](https://eslint.org/)
- [ ] [Prettier](https://prettier.io/)

### Accessibility

- [ ] [Accessibility validation](https://achecker.ca/checker/index.php)
- [ ] [Color contrast](https://webaim.org/resources/contrastchecker/)

### SEO

- [ ] [Google rich snippets](https://search.google.com/test/rich-results)
- [ ] [robots.txt](https://support.google.com/webmasters/answer/6062596?hl=pt-BR)
- [ ] [XML Sitemap](https://www.xml-sitemaps.com/)
- [ ] [I18n](https://validator.w3.org/i18n-checker/)
- [ ] [Metatags <title, description, keywords> unique by page]()

### Social Media & Structured Data

- [ ] [Open Graph Protocol](https://ogp.me/)
- [ ] [Twitter Cards](https://developer.twitter.com/en/docs/tweets/

### Usability

- [ ] [Custom 404 page]()
- [ ] [Custom crash page]()
- [ ] [Favicon](https://realfavicongenerator.net/)
- [ ] [Use friendly URL]()
- [ ] [Mobile friendly](https://search.google.com/test/mobile-friendly)

### Performance

- [ ] [Google page speed score of 90+](https://developers.google.com/speed/pagespeed/insights/)
- [ ] [Optimize HTTP headers](https://redbot.org/)
- [ ] [Optimize Images](https://pageweight.imgix.com/)

### Analytics & Monitoring

- [ ] [Traffic analysis](https://marketingplatform.google.com/about/analytics/)
