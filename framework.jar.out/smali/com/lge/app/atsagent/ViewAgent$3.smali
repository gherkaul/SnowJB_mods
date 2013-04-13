.class Lcom/lge/app/atsagent/ViewAgent$3;
.super Landroid/os/Handler;
.source "ViewAgent.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/atsagent/ViewAgent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/app/atsagent/ViewAgent;


# direct methods
.method constructor <init>(Lcom/lge/app/atsagent/ViewAgent;)V
    .locals 0
    .parameter

    .prologue
    .line 366
    iput-object p1, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .parameter "className"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 638
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 639
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 652
    :goto_0
    return-object v0

    .line 640
    :cond_0
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 641
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 642
    :cond_1
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 643
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 644
    :cond_2
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 645
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 646
    :cond_3
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 647
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 648
    :cond_4
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 649
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 650
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 651
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    goto :goto_0

    .line 652
    :cond_6
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method

.method private getValueByString(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2
    .parameter
    .parameter "value"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 618
    .local p1, type:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_0

    const-class v0, Ljava/lang/Integer;

    if-ne p1, v0, :cond_2

    .line 619
    :cond_0
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    .line 634
    .end local p2
    :cond_1
    :goto_0
    return-object p2

    .line 620
    .restart local p2
    :cond_2
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_3

    const-class v0, Ljava/lang/Float;

    if-ne p1, v0, :cond_4

    .line 621
    :cond_3
    invoke-static {p2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    goto :goto_0

    .line 622
    :cond_4
    sget-object v0, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_5

    const-class v0, Ljava/lang/Double;

    if-ne p1, v0, :cond_6

    .line 623
    :cond_5
    invoke-static {p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p2

    goto :goto_0

    .line 624
    :cond_6
    sget-object v0, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_7

    const-class v0, Ljava/lang/Byte;

    if-ne p1, v0, :cond_8

    .line 625
    :cond_7
    invoke-static {p2}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p2

    goto :goto_0

    .line 626
    :cond_8
    sget-object v0, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_9

    const-class v0, Ljava/lang/Short;

    if-ne p1, v0, :cond_a

    .line 627
    :cond_9
    invoke-static {p2}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p2

    goto :goto_0

    .line 628
    :cond_a
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_b

    const-class v0, Ljava/lang/Long;

    if-ne p1, v0, :cond_c

    .line 629
    :cond_b
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    goto :goto_0

    .line 630
    :cond_c
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p1, v0, :cond_d

    const-class v0, Ljava/lang/Boolean;

    if-ne p1, v0, :cond_e

    .line 631
    :cond_d
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    .line 632
    :cond_e
    const-class v0, Ljava/lang/String;

    if-eq p1, v0, :cond_1

    const-class v0, Ljava/lang/CharSequence;

    if-eq p1, v0, :cond_1

    .line 634
    const/4 p2, 0x0

    goto :goto_0
.end method

.method private invokeMethod(I)V
    .locals 16
    .parameter "trg"

    .prologue
    .line 552
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v12}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v13

    monitor-enter v13

    .line 554
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    const-string v15, ""

    #setter for: Lcom/lge/app/atsagent/ViewAgent;->methodResult:Ljava/lang/String;
    invoke-static {v14, v15}, Lcom/lge/app/atsagent/ViewAgent;->access$702(Lcom/lge/app/atsagent/ViewAgent;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    #setter for: Lcom/lge/app/atsagent/ViewAgent;->methodError:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/lge/app/atsagent/ViewAgent;->access$502(Lcom/lge/app/atsagent/ViewAgent;Ljava/lang/String;)Ljava/lang/String;

    .line 556
    const-string v12, "ViewAgent"

    const-string v14, "UI handler: Invoke Method"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    move/from16 v0, p1

    #calls: Lcom/lge/app/atsagent/ViewAgent;->getMainRootView(I)Landroid/view/View;
    invoke-static {v12, v0}, Lcom/lge/app/atsagent/ViewAgent;->access$1200(Lcom/lge/app/atsagent/ViewAgent;I)Landroid/view/View;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v14}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v14

    iget v14, v14, Lcom/lge/app/atsagent/MethodDescription;->targetId:I

    #calls: Lcom/lge/app/atsagent/ViewAgent;->findView(Landroid/view/View;I)Landroid/view/View;
    invoke-static {v12, v14}, Lcom/lge/app/atsagent/ViewAgent;->access$1300(Landroid/view/View;I)Landroid/view/View;

    move-result-object v10

    .line 558
    .local v10, target:Landroid/view/View;
    if-nez v10, :cond_0

    .line 559
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    const-string v14, "Target not found"

    #setter for: Lcom/lge/app/atsagent/ViewAgent;->methodError:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/lge/app/atsagent/ViewAgent;->access$502(Lcom/lge/app/atsagent/ViewAgent;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 612
    :try_start_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v12}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notify()V

    .line 560
    monitor-exit v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 615
    .end local v10           #target:Landroid/view/View;
    :goto_0
    return-void

    .line 563
    .restart local v10       #target:Landroid/view/View;
    :cond_0
    :try_start_2
    const-string v12, "ViewAgent"

    const-string v14, "Target to invoke found"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v12}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v12

    iget-object v12, v12, Lcom/lge/app/atsagent/MethodDescription;->className:Ljava/lang/String;

    invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 566
    .local v1, cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v1, v12}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v12

    if-nez v12, :cond_1

    .line 567
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    const-string v14, "Cannot cast view to specified type"

    #setter for: Lcom/lge/app/atsagent/ViewAgent;->methodError:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/lge/app/atsagent/ViewAgent;->access$502(Lcom/lge/app/atsagent/ViewAgent;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 612
    :try_start_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v12}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notify()V

    .line 568
    monitor-exit v13

    goto :goto_0

    .line 614
    .end local v1           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v10           #target:Landroid/view/View;
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v12

    .line 571
    .restart local v1       #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v10       #target:Landroid/view/View;
    :cond_1
    :try_start_4
    invoke-virtual {v1, v10}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .line 573
    .local v11, tvv:Ljava/lang/Object;
    const-string v12, "ViewAgent"

    const-string v14, "Target class has been cast"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v12}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v12

    iget-object v12, v12, Lcom/lge/app/atsagent/MethodDescription;->params:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 575
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v12}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v12

    iget-object v12, v12, Lcom/lge/app/atsagent/MethodDescription;->params:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v2, v12, [Ljava/lang/Class;

    .line 576
    .local v2, cls:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v12}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v12

    iget-object v12, v12, Lcom/lge/app/atsagent/MethodDescription;->params:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v12

    new-array v8, v12, [Ljava/lang/Object;

    .line 577
    .local v8, oo:[Ljava/lang/Object;
    const/4 v4, 0x0

    .line 578
    .local v4, i:I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v12}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v12

    iget-object v12, v12, Lcom/lge/app/atsagent/MethodDescription;->params:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/lge/app/atsagent/MethodDescription$ParamEntity;

    .line 579
    .local v9, pr:Lcom/lge/app/atsagent/MethodDescription$ParamEntity;
    iget-object v12, v9, Lcom/lge/app/atsagent/MethodDescription$ParamEntity;->type:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Lcom/lge/app/atsagent/ViewAgent$3;->getClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v12

    aput-object v12, v2, v4

    .line 580
    aget-object v12, v2, v4

    iget-object v14, v9, Lcom/lge/app/atsagent/MethodDescription$ParamEntity;->value:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v14}, Lcom/lge/app/atsagent/ViewAgent$3;->getValueByString(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    aput-object v12, v8, v4

    .line 581
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 584
    .end local v9           #pr:Lcom/lge/app/atsagent/MethodDescription$ParamEntity;
    :cond_2
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v14}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v14

    iget-object v14, v14, Lcom/lge/app/atsagent/MethodDescription;->methodName:Ljava/lang/String;

    invoke-virtual {v12, v14, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 585
    .local v6, m:Ljava/lang/reflect/Method;
    const-string v12, "ViewAgent"

    const-string v14, "Got method"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v12}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v12

    iget-boolean v12, v12, Lcom/lge/app/atsagent/MethodDescription;->hasReturn:Z

    if-eqz v12, :cond_4

    .line 587
    invoke-virtual {v6, v11, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 588
    .local v7, ob:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    if-nez v7, :cond_3

    const-string v12, ""

    :goto_2
    #setter for: Lcom/lge/app/atsagent/ViewAgent;->methodResult:Ljava/lang/String;
    invoke-static {v14, v12}, Lcom/lge/app/atsagent/ViewAgent;->access$702(Lcom/lge/app/atsagent/ViewAgent;Ljava/lang/String;)Ljava/lang/String;

    .line 589
    const-string v12, "ViewAgent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Method returns: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodResult:Ljava/lang/String;
    invoke-static {v15}, Lcom/lge/app/atsagent/ViewAgent;->access$700(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 612
    :try_start_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v12}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notify()V

    .line 590
    monitor-exit v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 588
    :cond_3
    :try_start_6
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_2

    .line 592
    .end local v7           #ob:Ljava/lang/Object;
    :cond_4
    invoke-virtual {v6, v11, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 612
    .end local v2           #cls:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v4           #i:I
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v8           #oo:[Ljava/lang/Object;
    :goto_3
    :try_start_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v12}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notify()V

    .line 614
    .end local v1           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #m:Ljava/lang/reflect/Method;
    .end local v10           #target:Landroid/view/View;
    .end local v11           #tvv:Ljava/lang/Object;
    :goto_4
    monitor-exit v13
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    .line 595
    .restart local v1       #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v10       #target:Landroid/view/View;
    .restart local v11       #tvv:Ljava/lang/Object;
    :cond_5
    :try_start_8
    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v14}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v14

    iget-object v14, v14, Lcom/lge/app/atsagent/MethodDescription;->methodName:Ljava/lang/String;

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Class;

    invoke-virtual {v12, v14, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    .line 596
    .restart local v6       #m:Ljava/lang/reflect/Method;
    const-string v12, "ViewAgent"

    const-string v14, "Got method without params"

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v12}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v12

    iget-boolean v12, v12, Lcom/lge/app/atsagent/MethodDescription;->hasReturn:Z

    if-eqz v12, :cond_7

    .line 598
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v6, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 599
    .restart local v7       #ob:Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    if-nez v7, :cond_6

    const-string v12, ""

    :goto_5
    #setter for: Lcom/lge/app/atsagent/ViewAgent;->methodResult:Ljava/lang/String;
    invoke-static {v14, v12}, Lcom/lge/app/atsagent/ViewAgent;->access$702(Lcom/lge/app/atsagent/ViewAgent;Ljava/lang/String;)Ljava/lang/String;

    .line 600
    const-string v12, "ViewAgent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Method returns: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodResult:Ljava/lang/String;
    invoke-static {v15}, Lcom/lge/app/atsagent/ViewAgent;->access$700(Lcom/lge/app/atsagent/ViewAgent;)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    .line 612
    :try_start_9
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v12}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notify()V

    .line 601
    monitor-exit v13
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_0

    .line 599
    :cond_6
    :try_start_a
    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_5

    .line 603
    .end local v7           #ob:Ljava/lang/Object;
    :cond_7
    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v6, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    goto/16 :goto_3

    .line 606
    .end local v1           #cl:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v6           #m:Ljava/lang/reflect/Method;
    .end local v10           #target:Landroid/view/View;
    .end local v11           #tvv:Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 607
    .local v3, ex:Ljava/lang/Exception;
    :try_start_b
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    #setter for: Lcom/lge/app/atsagent/ViewAgent;->methodError:Ljava/lang/String;
    invoke-static {v12, v14}, Lcom/lge/app/atsagent/ViewAgent;->access$502(Lcom/lge/app/atsagent/ViewAgent;Ljava/lang/String;)Ljava/lang/String;

    .line 608
    const-string v12, "ViewAgent"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Exception on Invoke Method:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v12, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 612
    :try_start_c
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v12}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notify()V

    goto/16 :goto_4

    .end local v3           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->methodLocker:Lcom/lge/app/atsagent/MethodDescription;
    invoke-static {v14}, Lcom/lge/app/atsagent/ViewAgent;->access$600(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/MethodDescription;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/Object;->notify()V

    throw v12
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0
.end method

.method private invokeScript(I)V
    .locals 14
    .parameter "target"

    .prologue
    .line 494
    iget-object v10, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v10}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v11

    monitor-enter v11

    .line 496
    :try_start_0
    iget-object v10, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v10}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v10

    const/4 v12, 0x1

    iput v12, v10, Lcom/lge/app/atsagent/ActionResponse;->returnCode:I

    .line 497
    iget-object v10, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #calls: Lcom/lge/app/atsagent/ViewAgent;->getMainRootView(I)Landroid/view/View;
    invoke-static {v10, p1}, Lcom/lge/app/atsagent/ViewAgent;->access$1200(Lcom/lge/app/atsagent/ViewAgent;I)Landroid/view/View;

    move-result-object v10

    iget-object v12, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v12}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v12

    iget v12, v12, Lcom/lge/app/atsagent/ActionResponse;->requestId:I

    #calls: Lcom/lge/app/atsagent/ViewAgent;->findView(Landroid/view/View;I)Landroid/view/View;
    invoke-static {v10, v12}, Lcom/lge/app/atsagent/ViewAgent;->access$1300(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/webkit/WebView;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 499
    .local v5, engine:Landroid/webkit/WebView;
    if-nez v5, :cond_0

    .line 546
    :try_start_1
    iget-object v10, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v10}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    .line 500
    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 549
    .end local v5           #engine:Landroid/webkit/WebView;
    :goto_0
    return-void

    .line 502
    .restart local v5       #engine:Landroid/webkit/WebView;
    :cond_0
    :try_start_2
    const-string v10, "android.webkit.WebView"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 503
    .local v3, clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    const-string/jumbo v10, "mWebViewCore"

    invoke-virtual {v3, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 504
    .local v7, f:Ljava/lang/reflect/Field;
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 505
    invoke-virtual {v7, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 507
    .local v4, core:Ljava/lang/Object;
    const-string v10, "android.webkit.WebViewCore"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 508
    const-string v10, "mBrowserFrame"

    invoke-virtual {v3, v10}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 509
    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 510
    invoke-virtual {v7, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 513
    .local v2, bFrame:Ljava/lang/Object;
    const-string v10, "android.webkit.BrowserFrame"

    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 514
    const/4 v10, 0x1

    new-array v1, v10, [Ljava/lang/Class;

    .line 515
    .local v1, arrayOfClass:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    const/4 v10, 0x0

    const-class v12, Ljava/lang/String;

    aput-object v12, v1, v10

    .line 516
    const-string/jumbo v10, "stringByEvaluatingJavaScriptFromString"

    invoke-virtual {v3, v10, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v8

    .line 518
    .local v8, javaMethod:Ljava/lang/reflect/Method;
    if-nez v8, :cond_1

    .line 546
    :try_start_3
    iget-object v10, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v10}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    .line 519
    monitor-exit v11

    goto :goto_0

    .line 548
    .end local v1           #arrayOfClass:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v2           #bFrame:Ljava/lang/Object;
    .end local v3           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #core:Ljava/lang/Object;
    .end local v5           #engine:Landroid/webkit/WebView;
    .end local v7           #f:Ljava/lang/reflect/Field;
    .end local v8           #javaMethod:Ljava/lang/reflect/Method;
    :catchall_0
    move-exception v10

    monitor-exit v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v10

    .line 521
    .restart local v1       #arrayOfClass:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .restart local v2       #bFrame:Ljava/lang/Object;
    .restart local v3       #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .restart local v4       #core:Ljava/lang/Object;
    .restart local v5       #engine:Landroid/webkit/WebView;
    .restart local v7       #f:Ljava/lang/reflect/Field;
    .restart local v8       #javaMethod:Ljava/lang/reflect/Method;
    :cond_1
    const/4 v10, 0x1

    :try_start_4
    invoke-virtual {v8, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 523
    const/4 v10, 0x1

    new-array v0, v10, [Ljava/lang/Object;

    .line 524
    .local v0, args:[Ljava/lang/Object;
    const/4 v10, 0x0

    iget-object v12, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v12}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v12

    iget-object v12, v12, Lcom/lge/app/atsagent/ActionResponse;->description:Ljava/lang/String;

    aput-object v12, v0, v10

    .line 526
    const/4 v9, 0x0

    .line 527
    .local v9, jsDisabled:Z
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    invoke-virtual {v10}, Landroid/webkit/WebSettings;->getJavaScriptEnabled()Z

    move-result v10

    if-nez v10, :cond_2

    .line 528
    const/4 v9, 0x1

    .line 529
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    const/4 v12, 0x1

    invoke-virtual {v10, v12}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 532
    :cond_2
    iget-object v10, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v10}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v12

    invoke-virtual {v8, v2, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    iput-object v10, v12, Lcom/lge/app/atsagent/ActionResponse;->description:Ljava/lang/String;

    .line 534
    if-eqz v9, :cond_3

    .line 535
    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v10

    const/4 v12, 0x0

    invoke-virtual {v10, v12}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 537
    :cond_3
    const-string v10, "ViewAgent"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Script result: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v13}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v13

    iget-object v13, v13, Lcom/lge/app/atsagent/ActionResponse;->description:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    iget-object v10, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v10}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v10

    const/4 v12, 0x0

    iput v12, v10, Lcom/lge/app/atsagent/ActionResponse;->returnCode:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 546
    :try_start_5
    iget-object v10, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v10}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    .line 548
    .end local v0           #args:[Ljava/lang/Object;
    .end local v1           #arrayOfClass:[Ljava/lang/Class;,"[Ljava/lang/Class<*>;"
    .end local v2           #bFrame:Ljava/lang/Object;
    .end local v3           #clazz:Ljava/lang/Class;,"Ljava/lang/Class<*>;"
    .end local v4           #core:Ljava/lang/Object;
    .end local v5           #engine:Landroid/webkit/WebView;
    .end local v7           #f:Ljava/lang/reflect/Field;
    .end local v8           #javaMethod:Ljava/lang/reflect/Method;
    .end local v9           #jsDisabled:Z
    :goto_1
    monitor-exit v11
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/16 :goto_0

    .line 540
    :catch_0
    move-exception v6

    .line 541
    .local v6, ex:Ljava/lang/Exception;
    :try_start_6
    const-string v10, "ViewAgent"

    const-string v12, "invoke Script exception"

    invoke-static {v10, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    iget-object v10, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v10}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v10

    const/16 v12, 0x64

    iput v12, v10, Lcom/lge/app/atsagent/ActionResponse;->returnCode:I

    .line 543
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 546
    :try_start_7
    iget-object v10, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v10}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Object;->notify()V

    goto :goto_1

    .end local v6           #ex:Ljava/lang/Exception;
    :catchall_1
    move-exception v10

    iget-object v12, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->scriptResult:Lcom/lge/app/atsagent/ActionResponse;
    invoke-static {v12}, Lcom/lge/app/atsagent/ViewAgent;->access$800(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->notify()V

    throw v10
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
.end method

.method private parseUi(I)V
    .locals 6
    .parameter "target"

    .prologue
    .line 464
    iget-object v1, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v1}, Lcom/lge/app/atsagent/ViewAgent;->access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v2

    monitor-enter v2

    .line 466
    :try_start_0
    const-string v1, "ViewAgent"

    const-string v3, "UI handler: Start parsing"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    packed-switch p1, :pswitch_data_0

    .line 479
    :pswitch_0
    iget-object v1, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->rootView:Landroid/view/View;
    invoke-static {v3}, Lcom/lge/app/atsagent/ViewAgent;->access$1900(Lcom/lge/app/atsagent/ViewAgent;)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v4

    iget-object v5, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->fullList:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v5}, Lcom/lge/app/atsagent/ViewAgent;->access$100(Lcom/lge/app/atsagent/ViewAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    #calls: Lcom/lge/app/atsagent/ViewAgent;->parseView(Landroid/view/View;Lcom/lge/app/atsagent/UiElement;Z)Z
    invoke-static {v1, v3, v4, v5}, Lcom/lge/app/atsagent/ViewAgent;->access$2000(Lcom/lge/app/atsagent/ViewAgent;Landroid/view/View;Lcom/lge/app/atsagent/UiElement;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 488
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v1}, Lcom/lge/app/atsagent/ViewAgent;->access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    .line 490
    :goto_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 491
    return-void

    .line 470
    :pswitch_1
    :try_start_2
    iget-object v1, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v3}, Lcom/lge/app/atsagent/ViewAgent;->access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->fullList:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$100(Lcom/lge/app/atsagent/ViewAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    #calls: Lcom/lge/app/atsagent/ViewAgent;->getAll(Lcom/lge/app/atsagent/UiElement;Z)V
    invoke-static {v1, v3, v4}, Lcom/lge/app/atsagent/ViewAgent;->access$1600(Lcom/lge/app/atsagent/ViewAgent;Lcom/lge/app/atsagent/UiElement;Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 483
    :catch_0
    move-exception v0

    .line 484
    .local v0, ex:Ljava/lang/Exception;
    :try_start_3
    const-string v1, "ViewAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception on handle message:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 488
    :try_start_4
    iget-object v1, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v1}, Lcom/lge/app/atsagent/ViewAgent;->access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    goto :goto_1

    .line 490
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 473
    :pswitch_2
    :try_start_5
    iget-object v1, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v3}, Lcom/lge/app/atsagent/ViewAgent;->access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->fullList:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$100(Lcom/lge/app/atsagent/ViewAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    const/4 v5, 0x0

    #calls: Lcom/lge/app/atsagent/ViewAgent;->getMenu(Lcom/lge/app/atsagent/UiElement;ZZ)Landroid/view/View;
    invoke-static {v1, v3, v4, v5}, Lcom/lge/app/atsagent/ViewAgent;->access$1700(Lcom/lge/app/atsagent/ViewAgent;Lcom/lge/app/atsagent/UiElement;ZZ)Landroid/view/View;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_0

    .line 488
    :catchall_1
    move-exception v1

    :try_start_6
    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v3}, Lcom/lge/app/atsagent/ViewAgent;->access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->notify()V

    throw v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 476
    :pswitch_3
    :try_start_7
    iget-object v1, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    iget-object v3, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v3}, Lcom/lge/app/atsagent/ViewAgent;->access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v3

    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->fullList:Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$100(Lcom/lge/app/atsagent/ViewAgent;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    const/4 v5, 0x0

    #calls: Lcom/lge/app/atsagent/ViewAgent;->getPopup(Lcom/lge/app/atsagent/UiElement;ZZ)Landroid/view/View;
    invoke-static {v1, v3, v4, v5}, Lcom/lge/app/atsagent/ViewAgent;->access$1800(Lcom/lge/app/atsagent/ViewAgent;Lcom/lge/app/atsagent/UiElement;ZZ)Landroid/view/View;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 468
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private processAction(Lcom/lge/app/atsagent/ActionRequest;I)I
    .locals 10
    .parameter "req"
    .parameter "trg"

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    .line 392
    if-nez p1, :cond_1

    .line 393
    const/16 v3, 0x64

    .line 460
    :cond_0
    :goto_0
    return v3

    .line 395
    :cond_1
    const/4 v5, 0x0

    .line 396
    .local v5, target:Landroid/view/View;
    iget v8, p1, Lcom/lge/app/atsagent/ActionRequest;->action:I

    if-eq v8, v7, :cond_2

    .line 397
    iget-object v8, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #calls: Lcom/lge/app/atsagent/ViewAgent;->getMainRootView(I)Landroid/view/View;
    invoke-static {v8, p2}, Lcom/lge/app/atsagent/ViewAgent;->access$1200(Lcom/lge/app/atsagent/ViewAgent;I)Landroid/view/View;

    move-result-object v1

    .line 398
    .local v1, mainView:Landroid/view/View;
    iget v8, p1, Lcom/lge/app/atsagent/ActionRequest;->targetId:I

    #calls: Lcom/lge/app/atsagent/ViewAgent;->findView(Landroid/view/View;I)Landroid/view/View;
    invoke-static {v1, v8}, Lcom/lge/app/atsagent/ViewAgent;->access$1300(Landroid/view/View;I)Landroid/view/View;

    move-result-object v5

    .line 399
    if-eqz v5, :cond_0

    .line 403
    .end local v1           #mainView:Landroid/view/View;
    :cond_2
    iget v8, p1, Lcom/lge/app/atsagent/ActionRequest;->action:I

    packed-switch v8, :pswitch_data_0

    .line 455
    const-string v6, "ViewAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown action: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Lcom/lge/app/atsagent/ActionRequest;->action:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 456
    const/4 v3, 0x3

    goto :goto_0

    .line 405
    :pswitch_0
    const-class v8, Landroid/widget/EditText;

    #calls: Lcom/lge/app/atsagent/ViewAgent;->canCast(Landroid/view/View;Ljava/lang/Class;)Z
    invoke-static {v5, v8}, Lcom/lge/app/atsagent/ViewAgent;->access$1400(Landroid/view/View;Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 406
    const-string v6, "ViewAgent"

    const-string v8, "Action is not applicable for this type of view"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 407
    goto :goto_0

    .line 409
    :cond_3
    const-string v7, "ViewAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Performig action SET_TEXT: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p1, Lcom/lge/app/atsagent/ActionRequest;->string1:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    check-cast v5, Landroid/widget/EditText;

    .end local v5           #target:Landroid/view/View;
    iget-object v7, p1, Lcom/lge/app/atsagent/ActionRequest;->string1:Ljava/lang/String;

    invoke-virtual {v5, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_1
    move v3, v6

    .line 460
    goto :goto_0

    .line 415
    .restart local v5       #target:Landroid/view/View;
    :pswitch_1
    const-class v8, Landroid/widget/ListView;

    #calls: Lcom/lge/app/atsagent/ViewAgent;->canCast(Landroid/view/View;Ljava/lang/Class;)Z
    invoke-static {v5, v8}, Lcom/lge/app/atsagent/ViewAgent;->access$1400(Landroid/view/View;Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_5

    .line 416
    const-string v6, "ViewAgent"

    const-string v8, "Action is not applicable for this type of view"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 417
    goto :goto_0

    .line 419
    :cond_5
    const-string v7, "ViewAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scrolling ListView ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") to position "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/lge/app/atsagent/ActionRequest;->param1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    check-cast v5, Landroid/widget/ListView;

    .end local v5           #target:Landroid/view/View;
    iget v7, p1, Lcom/lge/app/atsagent/ActionRequest;->param1:I

    invoke-virtual {v5, v7}, Landroid/widget/ListView;->setSelection(I)V

    goto :goto_1

    .line 427
    .restart local v5       #target:Landroid/view/View;
    :pswitch_2
    const-class v8, Landroid/widget/ScrollView;

    #calls: Lcom/lge/app/atsagent/ViewAgent;->canCast(Landroid/view/View;Ljava/lang/Class;)Z
    invoke-static {v5, v8}, Lcom/lge/app/atsagent/ViewAgent;->access$1400(Landroid/view/View;Ljava/lang/Class;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 428
    const-string v6, "ViewAgent"

    const-string v8, "Action is not applicable for this type of view"

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v7

    .line 429
    goto/16 :goto_0

    :cond_6
    move-object v4, v5

    .line 431
    check-cast v4, Landroid/widget/ScrollView;

    .line 432
    .local v4, scrollable:Landroid/widget/ScrollView;
    iget v7, p1, Lcom/lge/app/atsagent/ActionRequest;->action:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_8

    .line 433
    .local v3, scrollUp:Z
    :goto_2
    const-string v8, "ViewAgent"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Scrolling ScrollView ("

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v9, ") "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    if-eqz v3, :cond_9

    const-string v7, "UP"

    :goto_3
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    invoke-virtual {v4}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    add-int/lit8 v2, v7, -0x1

    .line 436
    .local v2, scrollTo:I
    if-eqz v3, :cond_7

    .line 437
    neg-int v2, v2

    .line 438
    :cond_7
    invoke-virtual {v4}, Landroid/widget/ScrollView;->isSmoothScrollingEnabled()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 439
    invoke-virtual {v4, v6, v2}, Landroid/widget/ScrollView;->smoothScrollBy(II)V

    goto/16 :goto_1

    .end local v2           #scrollTo:I
    .end local v3           #scrollUp:Z
    :cond_8
    move v3, v6

    .line 432
    goto :goto_2

    .line 433
    .restart local v3       #scrollUp:Z
    :cond_9
    const-string v7, "DOWN"

    goto :goto_3

    .line 441
    .restart local v2       #scrollTo:I
    :cond_a
    invoke-virtual {v4, v6, v2}, Landroid/widget/ScrollView;->scrollBy(II)V

    goto/16 :goto_1

    .line 445
    .end local v2           #scrollTo:I
    .end local v3           #scrollUp:Z
    .end local v4           #scrollable:Landroid/widget/ScrollView;
    :pswitch_3
    const-string v7, "ViewAgent"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Rotate Activity to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p1, Lcom/lge/app/atsagent/ActionRequest;->param1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object v7, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->bindContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lge/app/atsagent/ViewAgent;->access$1500(Lcom/lge/app/atsagent/ViewAgent;)Landroid/content/Context;

    move-result-object v7

    instance-of v7, v7, Landroid/app/Activity;

    if-eqz v7, :cond_4

    .line 447
    const-string v7, "ViewAgent"

    const-string v8, "Activity has been detected"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget-object v7, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->bindContext:Landroid/content/Context;
    invoke-static {v7}, Lcom/lge/app/atsagent/ViewAgent;->access$1500(Lcom/lge/app/atsagent/ViewAgent;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    .line 449
    .local v0, current:Landroid/app/Activity;
    iget v7, p1, Lcom/lge/app/atsagent/ActionRequest;->param1:I

    invoke-virtual {v0, v7}, Landroid/app/Activity;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    .line 369
    const-string v2, "ViewAgent"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Message recieved with value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x12c

    if-lt v2, v3, :cond_0

    .line 371
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v2}, Lcom/lge/app/atsagent/ViewAgent;->access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v3

    monitor-enter v3

    .line 373
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v4, "request"

    invoke-virtual {v2, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/lge/app/atsagent/ActionRequest;

    .line 374
    .local v1, req:Lcom/lge/app/atsagent/ActionRequest;
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    iget v4, p1, Landroid/os/Message;->arg1:I

    add-int/lit16 v4, v4, -0x12c

    invoke-direct {p0, v1, v4}, Lcom/lge/app/atsagent/ViewAgent$3;->processAction(Lcom/lge/app/atsagent/ActionRequest;I)I

    move-result v4

    #setter for: Lcom/lge/app/atsagent/ViewAgent;->actionResult:I
    invoke-static {v2, v4}, Lcom/lge/app/atsagent/ViewAgent;->access$402(Lcom/lge/app/atsagent/ViewAgent;I)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 379
    :try_start_1
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v2}, Lcom/lge/app/atsagent/ViewAgent;->access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    .line 381
    .end local v1           #req:Lcom/lge/app/atsagent/ActionRequest;
    :goto_0
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 389
    :goto_1
    return-void

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, ex:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 379
    :try_start_3
    iget-object v2, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v2}, Lcom/lge/app/atsagent/ViewAgent;->access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V

    goto :goto_0

    .line 381
    .end local v0           #ex:Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2

    .line 379
    :catchall_1
    move-exception v2

    :try_start_4
    iget-object v4, p0, Lcom/lge/app/atsagent/ViewAgent$3;->this$0:Lcom/lge/app/atsagent/ViewAgent;

    #getter for: Lcom/lge/app/atsagent/ViewAgent;->locker:Lcom/lge/app/atsagent/UiElement;
    invoke-static {v4}, Lcom/lge/app/atsagent/ViewAgent;->access$200(Lcom/lge/app/atsagent/ViewAgent;)Lcom/lge/app/atsagent/UiElement;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 383
    :cond_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0xc8

    if-lt v2, v3, :cond_1

    .line 384
    iget v2, p1, Landroid/os/Message;->arg1:I

    add-int/lit16 v2, v2, -0xc8

    invoke-direct {p0, v2}, Lcom/lge/app/atsagent/ViewAgent$3;->invokeMethod(I)V

    goto :goto_1

    .line 385
    :cond_1
    iget v2, p1, Landroid/os/Message;->arg1:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_2

    .line 386
    iget v2, p1, Landroid/os/Message;->arg1:I

    add-int/lit8 v2, v2, -0x64

    invoke-direct {p0, v2}, Lcom/lge/app/atsagent/ViewAgent$3;->invokeScript(I)V

    goto :goto_1

    .line 388
    :cond_2
    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-direct {p0, v2}, Lcom/lge/app/atsagent/ViewAgent$3;->parseUi(I)V

    goto :goto_1
.end method
