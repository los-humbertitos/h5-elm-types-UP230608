module Helper exposing (..)


type GradeStatus
    = Approved
    | Failed
    | Pending


type AirplaneStatus
    = Cancelled
    | Delayed
    | OnTime
    | Boarding


categoricalGrade : List Float -> List GradeStatus
categoricalGrade list =
    List.map
        (\x ->
            if x < 0 then
                Pending

            else if x < 7 then
                Failed

            else
                Approved
        )
        list


airplaneScheduleAction : AirplaneStatus -> String
airplaneScheduleAction status =
    case status of
        Cancelled ->
            "Pedir reembolso"

        Delayed ->
            "Esperar"

        OnTime ->
            "Esperar"

        Boarding ->
            "Buscar boleto"


airportAction : List AirplaneStatus -> List String
airportAction vuelos =
    List.map
        (\vuelo ->
            if vuelo == Cancelled then
                "Pedir reembolso"

            else if vuelo == Delayed || vuelo == OnTime then
                "Esperar"

            else
                "Buscar boleto"
        )
        vuelos
