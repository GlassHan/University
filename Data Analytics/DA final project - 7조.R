library(shiny)
library(ggplot2)
library(DT)
library(dplyr)
library(stringr)

#실행이 안되면 복사해서 새 스크립트에서 실행 부탁드립니다! 한글이 포함되어서 그런 것 같습니다.

Boston <- read.csv("Boston.csv")

ui <- fluidPage(
  
  titlePanel("Data Analytics Project"),
  
  tabsetPanel(
    
    tabPanel(
      title = "소개",
      htmlOutput("welcome"),
      
      textOutput("hello"),
      
      helpText("Made by '김지수, 위대명, 조오현, 한유리, 황정준'")
    ),
    
    navbarMenu(
      title = "기본 정보",
      
      tabPanel(
        title = "데이터 테이블",
        DT::dataTableOutput("table")
      ),
      
      tabPanel(
        title = "변수 설명",
        sidebarLayout(
          sidebarPanel(
            selectInput(
              inputId = "variable",
              label = "변수를 고르세요.",
              choices = list("crim", "zn", "indus", "chas", "nox", "rm", "age", "dis", "rad", "tax", "ptratio", "black", "lstat", "medv"),
              selected = "crim"
            ),
            width = 3
          ),
          mainPanel(
            verbatimTextOutput("variabletext"),
            verbatimTextOutput("variablesummary"),
            plotOutput("basicplot"),
            
            verbatimTextOutput("variableinfo")
          )
        )
      )
    ),
    
    tabPanel(
      title = "그래프",
      sidebarLayout(
        sidebarPanel(
          sliderInput(
            inputId = "crim",
            label = "crim의 범위를 지정하세요.",
            value = c(0, 90), min = 0, max = 90,
            step = 5
          ),
          sliderInput(
            input = "zn",
            label = "zn의 범위를 지정하세요.",
            value = c(0, 100), min = 0, max = 100,
            step = 5
          ),
          sliderInput(
            input = "indus",
            label = "indus의 범위를 지정하세요.",
            value = c(0, 28), min = 0, max = 28,
            step = 1
          ),
          sliderInput(
            input = "nox",
            label = "nox의 범위를 지정하세요.",
            value = c(0, 1), min = 0, max = 1,
            step = 0.01
          ),
          sliderInput(
            input = "rm",
            label = "rm의 범위를 지정하세요.",
            value = c(0, 9), min = 0, max = 9,
            step = 0.1
          ),
          sliderInput(
            input = "age",
            label = "age의 범위를 지정하세요.",
            value = c(0, 100), min = 0, max = 100,
            step = 5
          ),
          sliderInput(
            input = "dis",
            label = "dis의 범위를 지정하세요.",
            value = c(0, 13), min = 0, max = 13,
            step = 0.5
          ),
          sliderInput(
            input = "rad",
            label = "rad의 범위를 지정하세요.",
            value = c(0, 24), min = 0, max = 24,
            step = 1
          ),
          sliderInput(
            input = "tax",
            label = "tax의 범위를 지정하세요.",
            value = c(180, 720), min = 180, max = 720,
            step = 5
          ),
          sliderInput(
            input = "ptratio",
            label = "ptratio의 범위를 지정하세요.",
            value = c(0, 25), min = 0, max = 25,
            step = 1
          ),
          sliderInput(
            input = "black",
            label = "black의 범위를 지정하세요.",
            value = c(0, 400), min = 0, max = 400,
            step = 5
          ),
          sliderInput(
            input = "lstat",
            label = "lstat의 범위를 지정하세요.",
            value = c(0, 40), min = 0, max = 40,
            step = 1
          ),
          sliderInput(
            input = "medv",
            label = "medv의 범위를 지정하세요.",
            value = c(0, 50), min = 0, max = 50,
            step = 1
          ),
          
          selectInput(
            inputId = "chas5",
            label = "강의 여부를 지정하세요.",
            choices = list("o", "x", "Do not care")
          ),
          
          selectInput(
            inputId = "xvar4",
            label = "x축을 지정하세요.",
            choices = list("crim",	"zn",	"indus",	"chas",	"nox",	"rm"	,"age",	"dis"	,"rad",	"tax",	"ptratio",	"black",	"lstat",	"medv")
          ),
          
          selectInput(
            inputId = "yvar4",
            label = "y축을 지정하세요.",
            choices = list("crim",	"zn",	"indus",	"chas",	"nox",	"rm"	,"age",	"dis"	,"rad",	"tax",	"ptratio",	"black",	"lstat",	"medv")
          )
          
        ),
        mainPanel(
          plotOutput("plot4", brush="plot4_click"),
          verbatimTextOutput("plot4info")
        )
      )
    ),
    
    
    navbarMenu(
      title = "추천 테마",
      
      tabPanel(
        title = "안전",
        sidebarLayout(
          sidebarPanel(
            sliderInput(
              inputId = "crim1",
              label = "crim의 범위를 지정하세요.",
              value = c(0, 20), min = 0, max = 90,
              step = 5
            ),
            
            sliderInput(
              inputId = "nox",
              label = "nox의 범위를 지정하세요.",
              value = c(0.35, 0.55), min = 0.35, max = 0.9,
              step = 0.05
            ),
            
            sliderInput(
              inputId = "age",
              label = "age의 범위를 지정하세요.",
              value = c(5, 20), min = 0, max = 100,
              step = 5
            ),
            
            sliderInput(
              inputId = "medv",
              label = "medv의 범위를 지정하세요.",
              value = c(20, 40), min = 5, max = 50,
              step = 5
            ),
            
            selectInput(
              inputId = "xvar",
              label = "x축을 지정하세요.",
              choices = list("medv", "age", "crim", "nox")
            ),
            
            selectInput(
              inputId = "yvar",
              label = "y축을 지정하세요.",
              choices = list("crim", "age", "nox", "medv")
            )
          ),
          mainPanel(
            helpText("Note: 안전 테마입니다.",
                     "초기 지정값은 추천 값입니다."),
            plotOutput("plot1", brush="plot1_click"),
            verbatimTextOutput("plot1info")
          )
        )
      ),
      
      tabPanel(
        title = "비즈니스",
        sidebarLayout(
          sidebarPanel(
            sliderInput(
              inputId = "indus",
              label = "insdus의 범위를 지정하세요.",
              value = c(3,15), min = 0, max = 30,
              step = 3
            ),
            
            sliderInput(
              inputId = "dis",
              label = "dis의 범위를 지정하세요.",
              value = c(3,7), min = 1, max = 15,
              step = 1
            ),
            
            sliderInput(
              inputId = "rad",
              label = "rad의 범위를 지정하세요.",
              value = c(5, 15), min = 0, max = 25,
              step = 3
            ),
            
            sliderInput(
              inputId = "tax",
              label = "tax의 범위를 지정하세요.",
              value = c(200, 400), min = 100, max = 800,
              step = 50
            ),
            
            sliderInput(
              inputId = "medv",
              label = "medv의 범위를 지정하세요.",
              value = c(20, 40), min = 5, max = 50,
              step = 5
            ),
            
            selectInput(
              inputId = "xvar1",
              label = "x축을 지정하세요.",
              choices = list("medv", "tax", "rad", "dis", "indus")
            ),
            
            selectInput(
              inputId = "yvar1",
              label = "y축을 지정하세요.",
              choices = list("indus", "dis", "rad", "tax", "medv")
            )
          ),
          mainPanel(
            helpText("Note: 비즈니스 테마입니다.",
                     "초기 지정값은 추천 값입니다."),
            plotOutput("plot2", brush="plot2_click"),
            verbatimTextOutput("plot2info")
          )
        )
      ),
      
      tabPanel(
        title = "쾌적",
        sidebarLayout(
          sidebarPanel(
            sliderInput(
              inputId = "zn7",
              label = "zn의 범위를 지정하세요.",
              value = c(20,50), min = 0, max = 100,
              step = 10
            ),
            
            selectInput(
              inputId = "chas7",
              label = "강의 여부를 지정하세요.",
              choices = list("o", "x", "Do not care")
            ),
            
            sliderInput(
              inputId = "rm7",
              label = "rm의 범위를 지정하세요.",
              value = c(5,7), min = 3, max = 9,
              step = 1
            ),
            
            sliderInput(
              inputId = "lstat7",
              label = "lstat의 범위를 지정하세요.",
              value = c(5, 15), min = 0, max = 40,
              step = 5
            ),
            
            sliderInput(
              inputId = "medv7",
              label = "medv의 범위를 지정하세요.",
              value = c(20, 40), min = 5, max = 50,
              step = 5
            ),
            
            selectInput(
              inputId = "xvar2",
              label = "x축을 지정하세요.",
              choices = list("medv", "rm", "zn", "lstat")
            ),
            
            selectInput(
              inputId = "yvar2",
              label = "y축을 지정하세요.",
              choices = list("rm", "zn", "lstat", "medv")
            )
          ),
          mainPanel(
            helpText("Note: 쾌적 테마입니다. 초기 지정값은 추천 값입니다."),
            plotOutput("plot3", brush="plot3_click"),
            verbatimTextOutput("plot3info")
            
            
          )
        )
      )
    ),
    
    tabPanel(
      title = "회귀",
      sidebarLayout(
        sidebarPanel(
          numericInput("numcr", label = h3("crim Input"), value = 0, min = 0, max = 100),
          numericInput("numzn", label = h3("zn Input"), value = 0, min = 0, max =100),
          numericInput("numin", label = h3("indus Input"), value = 0, min= 0 , max = 30),
          numericInput("numch", label = h3("chas Input"), value = 0, min = 0, max = 1, step=1),
          numericInput("numno", label = h3("nox Input"), value = 0.35 , min = 0.35, max = 0.9, step =0.5),
          numericInput("numrm", label = h3("rm Input"), value = 3, min = 3, max = 9, step = 1),
          numericInput("numag", label = h3("age Input"), value = 0, min = 0, max = 100),
          numericInput("numdi", label = h3("dis Input"), value = 1, min = 1, max =13),
          numericInput("numra", label = h3("rad Input"), value = 1, min = 1, max = 24),
          numericInput("numta", label = h3("tax Input"), value = 187, min = 187, max = 711),
          numericInput("numpt", label = h3("ptratio Input"), value = 12, min = 12, max = 22),
          numericInput("numbl", label = h3("black Input"), value = 0, min = 0, max = 400),
          numericInput("numls", label = h3("lstat Input"), value = 1, min =1,  max = 38)
        ),
        mainPanel(
          helpText("Note: 도출된 값은 변수 지정 값에 따른 예측 medv입니다. "),
          verbatimTextOutput("value")
        )
      )
    ),
    
    tabPanel(
      title = "정보 공유 채팅",
      
      includeCSS("shinychat.css"),
      includeScript("sendOnEnter.js"),
      div(
        
        class = "container-fluid", 
        div(class = "row-fluid",
            
            tags$head(tags$title("정보 공유")),
            
            
            div(class="span6", style="padding: 10px 0px;",
                h1("정보 공유 채팅방"), 
                h4("반갑습니다!")
            ), div(class="span6", id="play-nice",
                   "IP Addresses are logged... be a decent human being."
            )
            
        ),
        
        div(
          class = "row-fluid", 
          mainPanel(
            
            uiOutput("chat"),
            
            
            fluidRow(
              div(class="span10",
                  textInput("entry", "")
              ),
              div(class="span2 center",
                  actionButton("send", "Send")
              )
            )
          ),
          
          sidebarPanel(
            
            textInput("user", "ID를 입력하세요:", value=""),
            tags$hr(),
            h5("Connected Users"),
            
            uiOutput("userList"),
            tags$hr(),
            helpText(HTML("<p>Built using R & <a href = \"http://rstudio.com/shiny/\">Shiny</a>.<p>Source code available <a href =\"https://github.com/trestletech/ShinyChat\">on GitHub</a>.<p>Custom By W</a>"))
          )
        )
      )
    )
  )
)



server <- function(input, output, session){
  src = "http://www.desicomments.com/wp-content/uploads/2017/02/Welcome-Pic-600x355.jpg"
  
  output$welcome <- renderText({
    c('<img src="', src, '">')
  })
  
  output$hello <- renderText({
    "안녕하세요. 저희는 7조입니다!"
  })
  
  output$table <- DT::renderDataTable({
    DT::datatable(Boston)
  })
  
  output$variabletext <- renderText({
    if(input$variable == "crim"){
      paste(input$variable, "은 타운별 1인당 범죄율 입니다.")
    }else if(input$variable =="zn"){
      paste(input$variable, "은 25,000평방 피트를 초과하는 거주지역 비율입니다.")
    }else if(input$variable =="indus"){
      paste(input$variable, "는 비소매 사업지역의 토지 비율입니다.")
    }else if(input$variable =="chas"){
      paste(input$variable, "는 찰스강 더비 변수로써 강의 경계에 위치하면 1, 위치하지 않으면 0 입니다.")
    }else if(input$variable =="nox"){
      paste(input$variable, "는 10ppm당 농출 일산화질소입니다.")
    }else if(input$variable =="rm"){
      paste(input$variable, "은 주택 1가구당 방의 평균 개수입니다.")
    }else if(input$variable =="age"){
      paste(input$variable, "는 1940년 이전에 건축된 소유주택의 비율입니다.")
    }else if(input$variable =="dis"){
      paste(input$variable, "는 5개의 보스턴 고용 센터까지의 접근성 지수입니다.")
    }else if(input$variable =="rad"){
      paste(input$variable, "는 방사형 도로까지의 접근성 지수입니다.")
    }else if(input$variable =="tax"){
      paste(input$variable, "는 10,000달러당 재산 세율입니다.")
    }else if(input$variable =="ptratio"){
      paste(input$variable, "는 타운별 학생/교사 비율입니다.")
    }else if(input$variable =="black"){
      paste(input$variable, "은 타운별 흑인 비율입니다.")
    }else if(input$variable =="lstat"){
      paste(input$variable, "은 모집단의 하위계층의 비율입니다")
    }else if(input$variable =="medv"){
      paste(input$variable, "는 본인 소유의 주택가(중앙값)입니다. (단위:$1,000)")
    }
  })
  
  output$variablesummary <- renderPrint({
    if(input$variable == "crim"){
      data <- Boston[,input$variable, drop=T]
      summary(data)
    }else if(input$variable == "zn"){
      data <- Boston[,input$variable, drop=T]
      summary(data)
    }else if(input$variable == "indus"){
      data <- Boston[,input$variable, drop=T]
      summary(data)
    }else if(input$variable == "chas"){
      data <- Boston[,input$variable, drop=T]
      summary(data)
    }else if(input$variable == "nox"){
      data <- Boston[,input$variable, drop=T]
      summary(data)
    }else if(input$variable == "rm"){
      data <- Boston[,input$variable, drop=T]
      summary(data)
    }else if(input$variable == "age"){
      data <- Boston[,input$variable, drop=T]
      summary(data)
    }else if(input$variable == "dis"){
      data <- Boston[,input$variable, drop=T]
      summary(data)
    }else if(input$variable == "rad"){
      data <- Boston[,input$variable, drop=T]
      summary(data)
    }else if(input$variable == "tax"){
      data <- Boston[,input$variable, drop=T]
      summary(data)
    }else if(input$variable == "ptratio"){
      data <- Boston[,input$variable, drop=T]
      summary(data)
    }else if(input$variable == "black"){
      data <- Boston[,input$variable, drop=T]
      summary(data)
    }else if(input$variable == "lstat"){
      data <- Boston[,input$variable, drop=T]
      summary(data)
    }else if(input$variable == "medv"){
      data <- Boston[,input$variable, drop=T]
      summary(data)
    }
  })
  
  output$basicplot <- renderPlot({
    xvar <- input$variable
    yvar <- Boston[,"medv"]
    
    ggplot()+
      geom_point(data=Boston, mapping= aes_string(x=xvar, y=yvar))+
      labs(y = "medv")
  })
  
  output$variableinfo <- renderPrint({
    if(input$variable == "crim"){
      model2 <- lm(medv~ crim, data= Boston)
      summary(model2)
    }else if(input$variable == "zn"){
      model2 <- lm(medv~ zn, data= Boston)
      summary(model2)
    }else if(input$variable == "indus"){
      model2 <- lm(medv~ indus, data= Boston)
      summary(model2)
    }else if(input$variable == "chas"){
      model2 <- lm(medv~ chas, data= Boston)
      summary(model2)
    }else if(input$variable == "nox"){
      model2 <- lm(medv~ nox, data= Boston)
      summary(model2)
    }else if(input$variable == "rm"){
      model2 <- lm(medv~ rm, data= Boston)
      summary(model2)
    }else if(input$variable == "age"){
      model2 <- lm(medv~ age, data= Boston)
      summary(model2)
    }else if(input$variable == "dis"){
      model2 <- lm(medv~ dis, data= Boston)
      summary(model2)
    }else if(input$variable == "rad"){
      model2 <- lm(medv~ rad, data= Boston)
      summary(model2)
    }else if(input$variable == "tax"){
      model2 <- lm(medv~ tax, data= Boston)
      summary(model2)
    }else if(input$variable == "ptratio"){
      model2 <- lm(medv~ ptratio, data= Boston)
      summary(model2)
    }else if(input$variable == "black"){
      data <- Boston[,input$variable, drop=T]
      summary(data)
    }else if(input$variable == "lstat"){
      model2 <- lm(medv~ lstat, data= Boston)
      summary(model2)
    }else if(input$variable == "medv"){
      model2 <- lm(medv~ medv, data= Boston)
      summary(model2)
    }
  })
  
  output$plot4<-renderPlot({
    
    mincrim <- input$crim[1]
    maxcrim <- input$crim[2]
    minzn <- input$zn[1]
    maxzn <- input$zn[2]
    minindus <- input$indus[1]
    maxindus <- input$indus[2]
    minnox <- input$nox[1]
    maxnox <- input$nox[2]
    minrm <- input$rm[1]
    maxrm <- input$rm[2]
    minage <- input$age[1]
    maxage <- input$age[2]
    mindis <- input$dis[1]
    maxdis <- input$dis[2]
    minrad <- input$rad[1]
    maxrad <- input$rad[2]
    mintax <- input$tax[1]
    maxtax <- input$tax[2]
    minptratio <- input$ptratio[1]
    maxptratio <- input$ptratio[2]
    minblack <- input$black[1]
    maxblack <- input$black[2]
    minlstat <- input$lstat[1]
    maxlstat <- input$lstat[2]
    minmedv <- input$medv[1]
    maxmedv <- input$medv[2]
    oxchas5 <- input$chas5
    
    if(oxchas5 == "o"){
      filterBoston5 <- filter(Boston, mincrim <= crim & crim <= maxcrim & 
                                minzn <= zn & zn <= maxzn & 
                                minindus <= indus & indus <= maxindus &
                                minnox <= nox & nox <= maxnox & 
                                minrm <= rm & rm <= maxrm &
                                minage <= age & age <= maxage &
                                mindis <= dis & dis <= maxdis &
                                minrad <= rad & rad <= maxrad &
                                mintax <= tax & tax <= maxtax &
                                minptratio <= ptratio & ptratio <= maxptratio &
                                minblack <= black & black <= maxblack &
                                minlstat <= lstat & lstat <= maxlstat &
                                minmedv <= medv & medv <= maxmedv & chas == 1)
      
      ggplot()+
        geom_point(data=filterBoston5, mapping=aes_string(x=input$xvar4, y=input$yvar4), color="blue", size = 3)
    }else if(oxchas5 == "x"){
      filterBoston5 <- filter(Boston, mincrim <= crim & crim <= maxcrim & 
                                minzn <= zn & zn <= maxzn & 
                                minindus <= indus & indus <= maxindus &
                                minnox <= nox & nox <= maxnox & 
                                minrm <= rm & rm <= maxrm &
                                minage <= age & age <= maxage &
                                mindis <= dis & dis <= maxdis &
                                minrad <= rad & rad <= maxrad &
                                mintax <= tax & tax <= maxtax &
                                minptratio <= ptratio & ptratio <= maxptratio &
                                minblack <= black & black <= maxblack &
                                minlstat <= lstat & lstat <= maxlstat &
                                minmedv <= medv & medv <= maxmedv & chas == 0)
      
      ggplot()+
        geom_point(data=filterBoston5, mapping=aes_string(x=input$xvar4, y=input$yvar4))
    }else if(oxchas5 == "Do not care"){
      filterBoston6 <- filter(Boston, mincrim <= crim & crim <= maxcrim & 
                                minzn <= zn & zn <= maxzn & 
                                minindus <= indus & indus <= maxindus &
                                minnox <= nox & nox <= maxnox & 
                                minrm <= rm & rm <= maxrm &
                                minage <= age & age <= maxage &
                                mindis <= dis & dis <= maxdis &
                                minrad <= rad & rad <= maxrad &
                                mintax <= tax & tax <= maxtax &
                                minptratio <= ptratio & ptratio <= maxptratio &
                                minblack <= black & black <= maxblack &
                                minlstat <= lstat & lstat <= maxlstat &
                                minmedv <= medv & medv <= maxmedv & chas == 1)
      
      filterBoston7 <- filter(Boston, mincrim <= crim & crim <= maxcrim & 
                                minzn <= zn & zn <= maxzn & 
                                minindus <= indus & indus <= maxindus &
                                minnox <= nox & nox <= maxnox & 
                                minrm <= rm & rm <= maxrm &
                                minage <= age & age <= maxage &
                                mindis <= dis & dis <= maxdis &
                                minrad <= rad & rad <= maxrad &
                                mintax <= tax & tax <= maxtax &
                                minptratio <= ptratio & ptratio <= maxptratio &
                                minblack <= black & black <= maxblack &
                                minlstat <= lstat & lstat <= maxlstat &
                                minmedv <= medv & medv <= maxmedv & chas == 0)
      ggplot()+
        geom_point(data=filterBoston6, mapping=aes_string(x=input$xvar4, y=input$yvar4), color="blue", size = 3)+
        geom_point(data=filterBoston7, mapping=aes_string(x=input$xvar4, y=input$yvar4))
    }
    
  })
  
  output$plot4info <- renderPrint({
    mincrim <- input$crim[1]
    maxcrim <- input$crim[2]
    minzn <- input$zn[1]
    maxzn <- input$zn[2]
    minindus <- input$indus[1]
    maxindus <- input$indus[2]
    minnox <- input$nox[1]
    maxnox <- input$nox[2]
    minrm <- input$rm[1]
    maxrm <- input$rm[2]
    minage <- input$age[1]
    maxage <- input$age[2]
    mindis <- input$dis[1]
    maxdis <- input$dis[2]
    minrad <- input$rad[1]
    maxrad <- input$rad[2]
    mintax <- input$tax[1]
    maxtax <- input$tax[2]
    minptratio <- input$ptratio[1]
    maxptratio <- input$ptratio[2]
    minblack <- input$black[1]
    maxblack <- input$black[2]
    minlstat <- input$lstat[1]
    maxlstat <- input$lstat[2]
    minmedv <- input$medv[1]
    maxmedv <- input$medv[2]
    oxchas5 <- input$chas5
    
    if(oxchas5 == "o"){
      filterBoston5 <- filter(Boston, mincrim <= crim & crim <= maxcrim & 
                                minzn <= zn & zn <= maxzn & 
                                minindus <= indus & indus <= maxindus &
                                minnox <= nox & nox <= maxnox & 
                                minrm <= rm & rm <= maxrm &
                                minage <= age & age <= maxage &
                                mindis <= dis & dis <= maxdis &
                                minrad <= rad & rad <= maxrad &
                                mintax <= tax & tax <= maxtax &
                                minptratio <= ptratio & ptratio <= maxptratio &
                                minblack <= black & black <= maxblack &
                                minlstat <= lstat & lstat <= maxlstat &
                                minmedv <= medv & medv <= maxmedv & chas == 1)
      brushedPoints(filterBoston5, input$plot4_click)
    }else if(oxchas5 == "x"){
      filterBoston5 <- filter(Boston, mincrim <= crim & crim <= maxcrim & 
                                minzn <= zn & zn <= maxzn & 
                                minindus <= indus & indus <= maxindus &
                                minnox <= nox & nox <= maxnox & 
                                minrm <= rm & rm <= maxrm &
                                minage <= age & age <= maxage &
                                mindis <= dis & dis <= maxdis &
                                minrad <= rad & rad <= maxrad &
                                mintax <= tax & tax <= maxtax &
                                minptratio <= ptratio & ptratio <= maxptratio &
                                minblack <= black & black <= maxblack &
                                minlstat <= lstat & lstat <= maxlstat &
                                minmedv <= medv & medv <= maxmedv & chas == 0)
      brushedPoints(filterBoston5, input$plot4_click)
    }else if(oxchas5 == "Do not care"){
      filterBoston5 <- filter(Boston, mincrim <= crim & crim <= maxcrim & 
                                minzn <= zn & zn <= maxzn & 
                                minindus <= indus & indus <= maxindus &
                                minnox <= nox & nox <= maxnox & 
                                minrm <= rm & rm <= maxrm &
                                minage <= age & age <= maxage &
                                mindis <= dis & dis <= maxdis &
                                minrad <= rad & rad <= maxrad &
                                mintax <= tax & tax <= maxtax &
                                minptratio <= ptratio & ptratio <= maxptratio &
                                minblack <= black & black <= maxblack &
                                minlstat <= lstat & lstat <= maxlstat &
                                minmedv <= medv & medv <= maxmedv )
      brushedPoints(filterBoston5, input$plot4_click)
    }
  })
  
  output$plot1 <- renderPlot({
    mincrim <- input$crim1[1]
    maxcrim <- input$crim1[2]
    minnox <- input$nox[1]
    maxnox <- input$nox[2]
    minage <- input$age[1]
    maxage <- input$age[2]
    minmedv <- input$medv[1]
    maxmedv <- input$medv[2]
    
    filterBoston1 <- filter(Boston, mincrim <= crim & crim <= maxcrim & minage <= age & age <= maxage & minnox <= nox & nox <= maxnox & minmedv <= medv & medv <= maxmedv)
    
    ggplot()+
      geom_point(data=filterBoston1, mapping=aes_string(x=input$xvar, y=input$yvar))
  })
  
  output$plot1info <- renderPrint({
    mincrim <- input$crim1[1]
    maxcrim <- input$crim1[2]
    minnox <- input$nox[1]
    maxnox <- input$nox[2]
    minage <- input$age[1]
    maxage <- input$age[2]
    minmedv <- input$medv[1]
    maxmedv <- input$medv[2]
    
    filterBoston1 <- filter(Boston, mincrim <= crim & crim <= maxcrim & minage <= age & age <= maxage & minnox <= nox & nox <= maxnox & minmedv <= medv & medv <= maxmedv)
    
    brushedPoints(filterBoston1, input$plot1_click)
  })
  
  output$plot2 <- renderPlot({
    minindus <- input$indus[1]
    maxindus <- input$indus[2]
    mindis <- input$dis[1]
    maxdis <- input$dis[2]
    minrad <- input$rad[1]
    maxrad <- input$rad[2]
    mintax <- input$tax[1]
    maxtax <- input$tax[2]
    minmedv <- input$medv[1]
    maxmedv <- input$medv[2]
    
    filterBoston2 <- filter(Boston, minindus <= indus & indus <= maxindus & mindis <= dis & dis <= maxdis & minrad <= rad & rad <= maxrad & mintax <= tax & tax <= maxtax & minmedv <= medv & medv <= maxmedv)
    
    ggplot()+
      geom_point(data=filterBoston2, mapping=aes_string(x=input$xvar1, y=input$yvar1))
  })
  
  output$plot2info <- renderPrint({
    minindus <- input$indus[1]
    maxindus <- input$indus[2]
    mindis <- input$dis[1]
    maxdis <- input$dis[2]
    minrad <- input$rad[1]
    maxrad <- input$rad[2]
    mintax <- input$tax[1]
    maxtax <- input$tax[2]
    minmedv <- input$medv[1]
    maxmedv <- input$medv[2]
    
    filterBoston2 <- filter(Boston, minindus <= indus & indus <= maxindus & mindis <= dis & dis <= maxdis & minrad <= rad & rad <= maxrad & mintax <= tax & tax <= maxtax & minmedv <= medv & medv <= maxmedv)
    
    brushedPoints(filterBoston2, input$plot2_click)
  })
  
  output$plot3 <- renderPlot({
    minzn <- input$zn7[1]
    maxzn <- input$zn7[2]
    oxchas <- input$chas7
    minrm <- input$rm7[1]
    maxrm <- input$rm7[2]
    minlstat <- input$lstat7[1]
    maxlstat <- input$lstat7[2]
    minmedv <- input$medv7[1]
    maxmedv <- input$medv7[2]
    
    if(oxchas == "o"){
      filterBoston3 <- filter(Boston, minzn <= zn & zn <= maxzn & minrm <= rm & rm <= maxrm & minlstat <= lstat & lstat <= maxlstat & minmedv <= medv & medv <= maxmedv, chas == 1)
      
      ggplot()+
        geom_point(data=filterBoston3, mapping=aes_string(x=input$xvar2, y=input$yvar2), color="blue", size = 3)
    }else if(oxchas == "x"){
      filterBoston3 <- filter(Boston, minzn <= zn & zn <= maxzn & minrm <= rm & rm <= maxrm & minlstat <= lstat & lstat <= maxlstat & minmedv <= medv & medv <= maxmedv, chas == 0)
      
      ggplot()+
        geom_point(data=filterBoston3, mapping=aes_string(x=input$xvar2, y=input$yvar2))
    }else if(oxchas =="Do not care"){
      filterBoston3 <- filter(Boston, minzn <= zn & zn <= maxzn & minrm <= rm & rm <= maxrm & minlstat <= lstat & lstat <= maxlstat & minmedv <= medv & medv <= maxmedv, chas == 1)
      filterBoston4 <- filter(Boston, minzn <= zn & zn <= maxzn & minrm <= rm & rm <= maxrm & minlstat <= lstat & lstat <= maxlstat & minmedv <= medv & medv <= maxmedv, chas == 0)
      
      ggplot()+
        geom_point(data=filterBoston3, mapping=aes_string(x=input$xvar2, y=input$yvar2), color="blue", size = 3)+
        geom_point(data=filterBoston4, mapping=aes_string(x=input$xvar2, y=input$yvar2))
      
    }
  })
  
  output$plot3info <- renderPrint({
    minzn <- input$zn7[1]
    maxzn <- input$zn7[2]
    oxchas <- input$chas7
    minrm <- input$rm7[1]
    maxrm <- input$rm7[2]
    minlstat <- input$lstat7[1]
    maxlstat <- input$lstat7[2]
    minmedv <- input$medv7[1]
    maxmedv <- input$medv7[2]
    
    if(oxchas == "o"){
      filterBoston3 <- filter(Boston, minzn <= zn & zn <= maxzn & minrm <= rm & rm <= maxrm & minlstat <= lstat & lstat <= maxlstat & minmedv <= medv & medv <= maxmedv, chas == 1)
      brushedPoints(filterBoston3, input$plot3_click)
    }else if(oxchas == "x"){
      filterBoston3 <- filter(Boston, minzn <= zn & zn <= maxzn & minrm <= rm & rm <= maxrm & minlstat <= lstat & lstat <= maxlstat & minmedv <= medv & medv <= maxmedv, chas == 0)
      brushedPoints(filterBoston3, input$plot3_click)
    }else if(oxchas == "Do not care"){
      filterBoston3 <- filter(Boston, minzn <= zn & zn <= maxzn & minrm <= rm & rm <= maxrm & minlstat <= lstat & lstat <= maxlstat & minmedv <= medv & medv <= maxmedv)
      brushedPoints(filterBoston3, input$plot3_click)
    }
    
  })
  
  output$value <- renderText({
    modelhg <- lm(medv~.-X,Boston)
    
    stepwise.model<-step(modelhg,direction = "both")
    
    crim <- c(input$numcr)
    zn <- c(input$numzn)
    indus <- c(input$numin)
    chas <- c(input$numch)
    nox <- c(input$numno)
    rm <- c(input$numrm)
    age <- c(input$numag)
    dis <- c(input$numdi)
    rad <- c(input$numra)
    tax <- c(input$numta)
    ptratio <- c(input$numpt)
    black <- c(input$numbl)
    lstat <- c(input$numls)
    
    newdata<-data.frame(X=516,crim=crim,zn=zn,indus=indus,chas=chas,nox=nox,rm=rm,
                        age=age,dis=dis,rad=rad,tax=tax,ptratio=ptratio,black=black,lstat=lstat,medv=24)
    
    yhat <- predict(stepwise.model, newdata = newdata)
    
    print(yhat)
  })
  
  vars <- reactiveValues(chat=NULL, users=NULL)
  
  
  if (file.exists("chat.Rds")){
    vars$chat <- readRDS("chat.Rds")
  } else {
    vars$chat <- "Welcome to Shiny Chat!"
  }
  
  
  linePrefix <- function(){
    if (is.null(isolate(vars$chat))){
      return("")
    }
    return("<br />")
  }
  
  
  sessionVars <- reactiveValues(username = "")
  
  
  init <- FALSE
  
  
  session$onSessionEnded(function() {
    isolate({
      vars$users <- vars$users[vars$users != sessionVars$username]
      vars$chat <- c(vars$chat, paste0(linePrefix(),
                                       tags$span(class="user-exit",
                                                 sessionVars$username,
                                                 "left the room.")))
    })
  })
  
  
  observe({
    
    input$user
    
    if (!init){
      
      sessionVars$username <- paste0("User", round(runif(1, 10000, 99999)))
      isolate({
        vars$chat <<- c(vars$chat, paste0(linePrefix(),
                                          tags$span(class="user-enter",
                                                    sessionVars$username,
                                                    "entered the room.")))
      })
      init <<- TRUE
    } else{
      
      isolate({
        if (input$user == sessionVars$username || input$user == ""){
          
          return()
        }
        
        
        vars$users <- vars$users[vars$users != sessionVars$username]
        
        
        vars$chat <<- c(vars$chat, paste0(linePrefix(),
                                          tags$span(class="user-change",
                                                    paste0("\"", sessionVars$username, "\""),
                                                    " -> ",
                                                    paste0("\"", input$user, "\""))))
        
        
        sessionVars$username <- input$user
      })
    }
    
    isolate(vars$users <- c(vars$users, sessionVars$username))
  })
  
  
  observe({
    updateTextInput(session, "user", 
                    value=sessionVars$username)    
  })
  
  
  output$userList <- renderUI({
    tagList(tags$ul( lapply(vars$users, function(user){
      return(tags$li(user))
    })))
  })
  
  
  observe({
    if(input$send < 1){
      
      return()
    }
    isolate({
      
      vars$chat <<- c(vars$chat, 
                      paste0(linePrefix(),
                             tags$span(class="username",
                                       tags$abbr(title=Sys.time(), sessionVars$username)
                             ),
                             ": ",
                             tagList(input$entry)))
    })
    
    updateTextInput(session, "entry", value="")
  })
  
  
  output$chat <- renderUI({
    if (length(vars$chat) > 500){
      
      vars$chat <- vars$chat[(length(vars$chat)-500):(length(vars$chat))]
    }
    
    saveRDS(vars$chat, "chat.Rds")
    
    HTML(vars$chat)
  })
}

shinyApp(ui = ui, server = server)