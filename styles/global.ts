import { createGlobalStyle } from "styled-components";
import { pallete } from "./colors";

export default createGlobalStyle`
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    body {
        background: ${pallete.whietOne};
        font-size: 16px;
        font-family: 'Montserrat', sans-serif;
    }
`