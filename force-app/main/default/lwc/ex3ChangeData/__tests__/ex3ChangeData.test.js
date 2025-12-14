import { createElement } from '@lwc/engine-dom';
import Ex3ChangeData from 'c/ex3ChangeData';

describe('c-ex3-change-data', () => {
    afterEach(() => {
        // Clean up DOM after each test
        while (document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
    });

    it('updates msg value in connectedCallback', () => {
        // Create component
        const element = createElement('c-ex3-change-data', {
            is: Ex3ChangeData
        });

        // Add to DOM (triggers connectedCallback)
        document.body.appendChild(element);

        // Access rendered DOM
        const div = element.shadowRoot;

        // Validate JS property value
        expect(element.msg).toBe('Hello from JS - connectedCallback');
    });
});