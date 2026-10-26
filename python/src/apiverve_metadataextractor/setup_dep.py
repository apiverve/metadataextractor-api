from setuptools import setup, find_packages

setup(
    name='apiverve_metadataextractor',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
    description='Metadata Extractor is a website metadata extraction API that pulls HTML meta tags from any submitted URL, returning the page title, meta description, author, robots directives, and language. Paid tiers add Open Graph tags, JSON-LD schemas, and favicons.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/metadataextractor?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)
