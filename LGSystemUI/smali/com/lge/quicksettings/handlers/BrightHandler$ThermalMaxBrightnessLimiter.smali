.class Lcom/lge/quicksettings/handlers/BrightHandler$ThermalMaxBrightnessLimiter;
.super Ljava/lang/Object;
.source "BrightHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/quicksettings/handlers/BrightHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ThermalMaxBrightnessLimiter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/BrightHandler;


# direct methods
.method private constructor <init>(Lcom/lge/quicksettings/handlers/BrightHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 243
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/BrightHandler$ThermalMaxBrightnessLimiter;->this$0:Lcom/lge/quicksettings/handlers/BrightHandler;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/lge/quicksettings/handlers/BrightHandler;Lcom/lge/quicksettings/handlers/BrightHandler$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 243
    invoke-direct {p0, p1}, Lcom/lge/quicksettings/handlers/BrightHandler$ThermalMaxBrightnessLimiter;-><init>(Lcom/lge/quicksettings/handlers/BrightHandler;)V

    return-void
.end method


# virtual methods
.method public getLimitedMaxBrightness()I
    .locals 7

    .prologue
    .line 248
    const/16 v3, 0xff

    .line 250
    .local v3, limitValue:I
    const/4 v1, 0x0

    .line 251
    .local v1, inReader:Ljava/io/BufferedReader;
    const-string v4, ""

    .line 253
    .local v4, lineStr:Ljava/lang/String;
    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/FileReader;

    const-string v6, "/sys/class/leds/lcd-backlight/max_brightness"

    invoke-direct {v5, v6}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    .end local v1           #inReader:Ljava/io/BufferedReader;
    .local v2, inReader:Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .line 255
    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    move-result v3

    .line 260
    if-eqz v2, :cond_0

    .line 261
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    move-object v1, v2

    .line 266
    .end local v2           #inReader:Ljava/io/BufferedReader;
    .restart local v1       #inReader:Ljava/io/BufferedReader;
    :cond_1
    :goto_0
    return v3

    .line 263
    .end local v1           #inReader:Ljava/io/BufferedReader;
    .restart local v2       #inReader:Ljava/io/BufferedReader;
    :catch_0
    move-exception v5

    move-object v1, v2

    .line 264
    .end local v2           #inReader:Ljava/io/BufferedReader;
    .restart local v1       #inReader:Ljava/io/BufferedReader;
    goto :goto_0

    .line 256
    :catch_1
    move-exception v0

    .line 257
    .local v0, exception:Ljava/lang/Exception;
    :goto_1
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 260
    if-eqz v1, :cond_1

    .line 261
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 263
    :catch_2
    move-exception v5

    goto :goto_0

    .line 259
    .end local v0           #exception:Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 260
    :goto_2
    if-eqz v1, :cond_2

    .line 261
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3

    .line 263
    :cond_2
    :goto_3
    throw v5

    :catch_3
    move-exception v6

    goto :goto_3

    .line 259
    .end local v1           #inReader:Ljava/io/BufferedReader;
    .restart local v2       #inReader:Ljava/io/BufferedReader;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2           #inReader:Ljava/io/BufferedReader;
    .restart local v1       #inReader:Ljava/io/BufferedReader;
    goto :goto_2

    .line 256
    .end local v1           #inReader:Ljava/io/BufferedReader;
    .restart local v2       #inReader:Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2           #inReader:Ljava/io/BufferedReader;
    .restart local v1       #inReader:Ljava/io/BufferedReader;
    goto :goto_1
.end method

.method public isLimited()Z
    .locals 3

    .prologue
    .line 270
    const-string v0, "BrightHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getLimitedMaxBrightness(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/BrightHandler$ThermalMaxBrightnessLimiter;->getLimitedMaxBrightness()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 271
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/BrightHandler$ThermalMaxBrightnessLimiter;->getLimitedMaxBrightness()I

    move-result v0

    const/16 v1, 0xff

    if-eq v0, v1, :cond_0

    .line 273
    const/4 v0, 0x1

    .line 277
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showLimitedToastIfLimitNeeds(I)V
    .locals 7
    .parameter "nextMode"

    .prologue
    .line 281
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/BrightHandler$ThermalMaxBrightnessLimiter;->isLimited()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 282
    const/4 v1, 0x0

    .line 284
    .local v1, nextValue:I
    packed-switch p1, :pswitch_data_0

    .line 299
    :goto_0
    :pswitch_0
    invoke-virtual {p0}, Lcom/lge/quicksettings/handlers/BrightHandler$ThermalMaxBrightnessLimiter;->getLimitedMaxBrightness()I

    move-result v0

    .line 300
    .local v0, limitedBrightness:I
    if-ge v0, v1, :cond_0

    .line 301
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/BrightHandler$ThermalMaxBrightnessLimiter;->this$0:Lcom/lge/quicksettings/handlers/BrightHandler;

    #getter for: Lcom/lge/systemui/AbstractBrightness;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/lge/quicksettings/handlers/BrightHandler;->access$600(Lcom/lge/quicksettings/handlers/BrightHandler;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/lge/quicksettings/handlers/BrightHandler$ThermalMaxBrightnessLimiter;->this$0:Lcom/lge/quicksettings/handlers/BrightHandler;

    #getter for: Lcom/lge/systemui/AbstractBrightness;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/lge/quicksettings/handlers/BrightHandler;->access$700(Lcom/lge/quicksettings/handlers/BrightHandler;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f090146

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const-wide/16 v5, 0x7d0

    invoke-static {v2, v3, v4, v5, v6}, Lcom/lge/systemui/Utils;->makeToast(Landroid/content/Context;Ljava/lang/String;IJ)V

    .line 302
    const-string v2, "BrightHandler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showLimitedToastIfLimitNeeds, limitedBrightness is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    .end local v0           #limitedBrightness:I
    .end local v1           #nextValue:I
    :cond_0
    return-void

    .line 286
    .restart local v1       #nextValue:I
    :pswitch_1
    invoke-static {}, Lcom/lge/quicksettings/handlers/BrightHandler;->access$200()I

    move-result v1

    .line 287
    goto :goto_0

    .line 289
    :pswitch_2
    invoke-static {}, Lcom/lge/quicksettings/handlers/BrightHandler;->access$300()I

    move-result v1

    .line 290
    goto :goto_0

    .line 292
    :pswitch_3
    invoke-static {}, Lcom/lge/quicksettings/handlers/BrightHandler;->access$400()I

    move-result v1

    .line 293
    goto :goto_0

    .line 295
    :pswitch_4
    iget-object v2, p0, Lcom/lge/quicksettings/handlers/BrightHandler$ThermalMaxBrightnessLimiter;->this$0:Lcom/lge/quicksettings/handlers/BrightHandler;

    #calls: Lcom/lge/quicksettings/handlers/BrightHandler;->getScreenBrightnessCustom()I
    invoke-static {v2}, Lcom/lge/quicksettings/handlers/BrightHandler;->access$500(Lcom/lge/quicksettings/handlers/BrightHandler;)I

    move-result v1

    goto :goto_0

    .line 284
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
