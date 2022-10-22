# Example Requests for Testing / Demo

## Verify Genesis Block

#### Request 

```
GET http://localhost:8000/block/height/0
```

#### Example Payload

```
```

#### Example Output

```
{
    "hash": "006aa8fec36f17f22358c48acc01911e3c94f986dce661b5131fa4bfab79344b",
    "height": 0,
    "body": "7b2264617461223a2247656e6573697320426c6f636b227d",
    "time": "1666432236",
    "previousBlockHash": null
}
```

## Request Ownership Verification of Bitcoin Wallet Address

#### Request 

```
POST http://localhost:8000/requestValidation
```

#### Example Payload 

```
{
    "address":"1HZwkjkeaoZfTSaJxDw6aKkxp45agDiEzN"
}
```

#### Example Output

```
"1HZwkjkeaoZfTSaJxDw6aKkxp45agDiEzN:1666432310:starRegistry"
```

## Sign message from previous step with your Bitcoin wallet

see documentation of your Bitcoin wallet

#### Example Output

```
Message: "1HZwkjkeaoZfTSaJxDw6aKkxp45agDiEzN:1666432310:starRegistry"
Address: 1HZwkjkeaoZfTSaJxDw6aKkxp45agDiEzN
Signature: Gwgll6qJP/liIcCnazNL7GcxHH+eexg08S3v62Jh1OivGXrktTYj2Wnj8er4CozRm3kCBvqGR8W6aSEU+S6QogU=
```

## Submit Star Registration

#### Request 

```
POST http://localhost:8000/submitStar
```

#### Example Payload 

```
{
    "address": "1HZwkjkeaoZfTSaJxDw6aKkxp45agDiEzN",
    "signature": "Gwgll6qJP/liIcCnazNL7GcxHH+eexg08S3v62Jh1OivGXrktTYj2Wnj8er4CozRm3kCBvqGR8W6aSEU+S6QogU=",
    "message": "1HZwkjkeaoZfTSaJxDw6aKkxp45agDiEzN:1666432310:starRegistry",
    "star": {
        "dec": "−62° 40′ 48″",
        "ra": "14h 28m 43.0s",
        "story": "Proxima Centauri 18"
}
```

#### Example Output

```
{
    "hash": "7b4911158fcc32d197a31ff512b759c6e48657dcc34ee19eb7798f4fafd327e2",
    "height": 1,
    "body": "7b2261646472657373223a2231485a776b6a6b65616f5a665453614a78447736614b6b7870343561674469457a4e222c226d657373616765223a2231485a776b6a6b65616f5a665453614a78447736614b6b7870343561674469457a4e3a313636363433323331303a737461725265676973747279222c227369676e6174757265223a224777676c6c36714a502f6c694963436e617a4e4c3747637848482b65657867303853337636324a68314f69764758726b7454596a32576e6a38657234436f7a526d336b434276714752385736615345552b5336516f67553d222c2273746172223a7b22646563223a22e288923632c2b0203430e280b2203438e280b3222c227261223a223134682032386d2034332e3073222c2273746f7279223a2250726f78696d612043656e7461757269203138227d7d",
    "time": "1666432490",
    "previousBlockHash": "006aa8fec36f17f22358c48acc01911e3c94f986dce661b5131fa4bfab79344b"
}
```

## List Stars Owned by Address

#### Request 

```
GET http://localhost:8000/blocks/1HZwkjkeaoZfTSaJxDw6aKkxp45agDiEzN
```

#### Example Payload 

```
```

#### Example Output

```
[
    {
        "address": "1HZwkjkeaoZfTSaJxDw6aKkxp45agDiEzN",
        "message": "1HZwkjkeaoZfTSaJxDw6aKkxp45agDiEzN:1666432310:starRegistry",
        "signature": "Gwgll6qJP/liIcCnazNL7GcxHH+eexg08S3v62Jh1OivGXrktTYj2Wnj8er4CozRm3kCBvqGR8W6aSEU+S6QogU=",
        "star": {
            "dec": "â62Â° 40â² 48â³",
            "ra": "14h 28m 43.0s",
            "story": "Proxima Centauri 18"
        }
    }
]
```
