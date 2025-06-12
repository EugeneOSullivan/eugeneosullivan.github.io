# Eugene O'Sullivan's Personal Website

This is my personal website built with Jekyll, featuring a blog, portfolio, and tech playground. The site is hosted on GitHub Pages at [eugeneosullivan.github.io](https://eugeneosullivan.github.io).

## Features

- **Blog**: Share thoughts, tutorials, and insights about technology and development
- **Portfolio**: Showcase projects and work experience
- **Tech Playground**: Interactive demos and code experiments
- **Modern Design**: Responsive layout with dark mode support
- **SEO Optimized**: Built-in SEO features and sitemap generation

## Local Development

### Prerequisites

- Ruby (version 3.0.0 or higher)
- Bundler
- Git

### Setup

1. Clone the repository:
   ```bash
   git clone https://github.com/eugeneosullivan/eugeneosullivan.github.io.git
   cd eugeneosullivan.github.io
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```

3. Start the local server:
   ```bash
   bundle exec jekyll serve
   ```

4. Visit `http://localhost:4000` in your browser

## Directory Structure

```
.
├── _layouts/          # HTML templates
├── _includes/         # Reusable HTML components
├── _posts/           # Blog posts
├── _portfolio/       # Portfolio items
├── _playground/      # Tech playground items
├── assets/           # Static assets (CSS, JS, images)
│   ├── css/         # Stylesheets
│   ├── js/          # JavaScript files
│   └── images/      # Images and icons
├── _config.yml       # Jekyll configuration
└── Gemfile          # Ruby dependencies
```

## Adding Content

### Blog Posts

Create new blog posts in the `_posts` directory with the following format:
```markdown
---
layout: post
title: "Your Post Title"
date: YYYY-MM-DD
categories: [category1, category2]
tags: [tag1, tag2]
---

Your post content here...
```

### Portfolio Items

Add portfolio items in the `_portfolio` directory:
```markdown
---
layout: portfolio
title: "Project Title"
description: "Project description"
image: /assets/images/portfolio/your-image.jpg
tags: [tag1, tag2]
github: https://github.com/username/project
demo: https://project-demo.com
---

Project content here...
```

### Playground Items

Create playground demos in the `_playground` directory:
```markdown
---
layout: playground
title: "Demo Title"
description: "Demo description"
preview_url: /playground/demos/your-demo.html
tags: [tag1, tag2]
---

Demo content here...
```

## Customization

- Edit `_config.yml` to update site settings
- Modify `assets/css/main.css` for styling changes
- Update layouts in `_layouts/` to change page structure
- Add new features in `assets/js/main.js`

## Contributing

Feel free to submit issues and enhancement requests!

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.