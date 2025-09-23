import { IdNow } from 'capacitor-idnow';

window.testEcho = () => {
    const inputValue = document.getElementById("echoInput").value;
    IdNow.echo({ value: inputValue })
}
