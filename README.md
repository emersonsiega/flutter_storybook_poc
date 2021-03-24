# flutter_storybook_poc

This project compares the Storybook options for Flutter.  

[Demo here](https://emersonsiega.github.io/flutter_storybook_poc)

## Used packages

### [Dashbook](https://github.com/erickzanardo/dashbook)

- Pros
    - Multiple themes
    - Link to open the source code
    - Used by [Flame](https://flame-engine.github.io/flame_example/#/)
- Cons
    - The properties drawer opens over the component
        - It's ok for mobile, but for desktop and web, it looks weird

### [Storyboard](https://github.com/ilikerobots/storyboard)

- Pros
    - 🤷🏻‍♂️
- Cons
    - There's no option to change the components arguments
    - The components are rendered in an accordion
    - There's no option to group components

### [Storybook Flutter](https://github.com/ookami-kb/storybook_flutter)

- Pros
    - Automatic, light and dark themes
    - Highly customizable
    - More friendly UI
    - Slider option to change int/double properties
- Cons
    - The layout works better for web or desktop