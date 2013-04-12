.class public final Lcom/android/server/LightsService$Light;
.super Ljava/lang/Object;
.source "LightsService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LightsService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "Light"
.end annotation


# instance fields
.field private mBrightness:I

.field private mColor:I

.field private mFlashing:Z

.field public mFlashingPeriod:I

.field private mId:I

.field private mMode:I

.field private mOffMS:I

.field private mOnMS:I

.field private m_brightness:I

.field final synthetic this$0:Lcom/android/server/LightsService;


# direct methods
.method private constructor <init>(Lcom/android/server/LightsService;I)V
    .locals 1
    .parameter
    .parameter "id"

    .prologue
    .line 109
    iput-object p1, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 106
    sget v0, Lcom/android/server/LightsService;->FLASH_CHARGING_PERIOD:I

    iput v0, p0, Lcom/android/server/LightsService$Light;->mFlashingPeriod:I

    .line 296
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/LightsService$Light;->mBrightness:I

    .line 110
    iput p2, p0, Lcom/android/server/LightsService$Light;->mId:I

    .line 111
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LightsService;ILcom/android/server/LightsService$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Lcom/android/server/LightsService$Light;-><init>(Lcom/android/server/LightsService;I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/LightsService$Light;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/android/server/LightsService$Light;->stopFlashing()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/LightsService$Light;IIIII)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"
    .parameter "x4"
    .parameter "x5"

    .prologue
    .line 103
    invoke-direct/range {p0 .. p5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/LightsService$Light;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 103
    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    return v0
.end method

.method private setLightLocked(IIIII)V
    .locals 7
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"
    .parameter "brightnessMode"

    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    iget-boolean v0, v0, Lcom/android/server/LightsService;->mUseLEDForG:Z

    if-eqz v0, :cond_2

    .line 264
    iget v0, p0, Lcom/android/server/LightsService$Light;->mColor:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/android/server/LightsService$Light;->mMode:I

    if-ne p2, v0, :cond_0

    iget v0, p0, Lcom/android/server/LightsService$Light;->mOnMS:I

    if-ne p3, v0, :cond_0

    iget v0, p0, Lcom/android/server/LightsService$Light;->mOffMS:I

    if-ne p4, v0, :cond_0

    iget v0, p0, Lcom/android/server/LightsService$Light;->mBrightness:I

    if-eq p5, v0, :cond_1

    .line 266
    :cond_0
    iput p1, p0, Lcom/android/server/LightsService$Light;->mColor:I

    .line 267
    iput p2, p0, Lcom/android/server/LightsService$Light;->mMode:I

    .line 268
    iput p3, p0, Lcom/android/server/LightsService$Light;->mOnMS:I

    .line 269
    iput p4, p0, Lcom/android/server/LightsService$Light;->mOffMS:I

    .line 270
    iput p5, p0, Lcom/android/server/LightsService$Light;->mBrightness:I

    .line 271
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mNativePointer:I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$100(Lcom/android/server/LightsService;)I

    move-result v0

    iget v1, p0, Lcom/android/server/LightsService$Light;->mId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    #calls: Lcom/android/server/LightsService;->setLight_native(IIIIIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/LightsService;->access$200(IIIIIII)V

    .line 288
    :cond_1
    :goto_0
    return-void

    .line 276
    :cond_2
    iget v0, p0, Lcom/android/server/LightsService$Light;->mColor:I

    if-ne p1, v0, :cond_3

    iget v0, p0, Lcom/android/server/LightsService$Light;->mMode:I

    if-ne p2, v0, :cond_3

    iget v0, p0, Lcom/android/server/LightsService$Light;->mOnMS:I

    if-ne p3, v0, :cond_3

    iget v0, p0, Lcom/android/server/LightsService$Light;->mOffMS:I

    if-eq p4, v0, :cond_1

    .line 279
    :cond_3
    iput p1, p0, Lcom/android/server/LightsService$Light;->mColor:I

    .line 280
    iput p2, p0, Lcom/android/server/LightsService$Light;->mMode:I

    .line 281
    iput p3, p0, Lcom/android/server/LightsService$Light;->mOnMS:I

    .line 282
    iput p4, p0, Lcom/android/server/LightsService$Light;->mOffMS:I

    .line 283
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mNativePointer:I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$100(Lcom/android/server/LightsService;)I

    move-result v0

    iget v1, p0, Lcom/android/server/LightsService$Light;->mId:I

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    #calls: Lcom/android/server/LightsService;->setLight_native(IIIIIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/LightsService;->access$200(IIIIIII)V

    goto :goto_0
.end method

.method private stopFlashing()V
    .locals 6

    .prologue
    .line 255
    monitor-enter p0

    .line 256
    :try_start_0
    iget v1, p0, Lcom/android/server/LightsService$Light;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 257
    monitor-exit p0

    .line 258
    return-void

    .line 257
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public getBrightness()I
    .locals 1

    .prologue
    .line 142
    iget v0, p0, Lcom/android/server/LightsService$Light;->m_brightness:I

    return v0
.end method

.method public getLightState()I
    .locals 3

    .prologue
    .line 303
    const/4 v0, 0x0

    .line 305
    .local v0, mLightState:I
    iget-boolean v1, p0, Lcom/android/server/LightsService$Light;->mFlashing:Z

    if-eqz v1, :cond_0

    .line 306
    const/4 v0, 0x2

    .line 315
    :goto_0
    return v0

    .line 309
    :cond_0
    iget v1, p0, Lcom/android/server/LightsService$Light;->mColor:I

    const/high16 v2, -0x100

    and-int/2addr v1, v2

    if-nez v1, :cond_1

    .line 310
    const/4 v0, 0x0

    goto :goto_0

    .line 312
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getPowerLEDColorByOperator()Ljava/lang/String;
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mOperator:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$000(Lcom/android/server/LightsService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DCM"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 123
    const-string v0, "RGB"

    .line 129
    :goto_0
    return-object v0

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mOperator:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$000(Lcom/android/server/LightsService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "KDDI"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    const-string v0, "RGB"

    goto :goto_0

    .line 126
    :cond_1
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mOperator:Ljava/lang/String;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$000(Lcom/android/server/LightsService;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ATT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 127
    const-string v0, "R"

    goto :goto_0

    .line 129
    :cond_2
    const-string v0, "RG"

    goto :goto_0
.end method

.method public pulse()V
    .locals 2

    .prologue
    .line 213
    const v0, 0xffffff

    const/4 v1, 0x7

    invoke-virtual {p0, v0, v1}, Lcom/android/server/LightsService$Light;->pulse(II)V

    .line 214
    return-void
.end method

.method public pulse(II)V
    .locals 6
    .parameter "color"
    .parameter "onMS"

    .prologue
    .line 217
    monitor-enter p0

    .line 218
    :try_start_0
    iget v0, p0, Lcom/android/server/LightsService$Light;->mColor:I

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/LightsService$Light;->mFlashing:Z

    if-nez v0, :cond_0

    .line 219
    const/4 v2, 0x2

    const/16 v4, 0x3e8

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 220
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$600(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mH:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/server/LightsService;->access$600(Lcom/android/server/LightsService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    int-to-long v2, p2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 222
    :cond_0
    monitor-exit p0

    .line 223
    return-void

    .line 222
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBrightness(I)V
    .locals 1
    .parameter "brightness"

    .prologue
    .line 146
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/LightsService$Light;->setBrightness(II)V

    .line 147
    return-void
.end method

.method public setBrightness(II)V
    .locals 6
    .parameter "brightness"
    .parameter "brightnessMode"

    .prologue
    .line 150
    monitor-enter p0

    .line 151
    :try_start_0
    iput p1, p0, Lcom/android/server/LightsService$Light;->m_brightness:I

    .line 152
    and-int/lit16 v1, p1, 0xff

    .line 153
    .local v1, color:I
    const/high16 v0, -0x100

    shl-int/lit8 v2, v1, 0x10

    or-int/2addr v0, v2

    shl-int/lit8 v2, v1, 0x8

    or-int/2addr v0, v2

    or-int/2addr v1, v0

    .line 154
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 155
    monitor-exit p0

    .line 156
    return-void

    .line 155
    .end local v1           #color:I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setBrightnessForce(I)V
    .locals 7
    .parameter "brightness"

    .prologue
    .line 163
    monitor-enter p0

    .line 164
    :try_start_0
    iput p1, p0, Lcom/android/server/LightsService$Light;->m_brightness:I

    .line 165
    and-int/lit16 v2, p1, 0xff

    .line 166
    .local v2, color:I
    const/high16 v0, -0x100

    shl-int/lit8 v1, v2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, v2, 0x8

    or-int/2addr v0, v1

    or-int/2addr v2, v0

    .line 167
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mNativePointer:I
    invoke-static {v0}, Lcom/android/server/LightsService;->access$100(Lcom/android/server/LightsService;)I

    move-result v0

    iget v1, p0, Lcom/android/server/LightsService$Light;->mId:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    #calls: Lcom/android/server/LightsService;->setLight_native(IIIIIII)V
    invoke-static/range {v0 .. v6}, Lcom/android/server/LightsService;->access$200(IIIIIII)V

    .line 168
    monitor-exit p0

    .line 169
    return-void

    .line 168
    .end local v2           #color:I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setColor(I)V
    .locals 6
    .parameter "color"

    .prologue
    .line 172
    monitor-enter p0

    .line 173
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    :try_start_0
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 174
    monitor-exit p0

    .line 175
    return-void

    .line 174
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFlashing(IIII)V
    .locals 6
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"

    .prologue
    const/16 v2, 0x64

    .line 187
    monitor-enter p0

    .line 189
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    iget-boolean v0, v0, Lcom/android/server/LightsService;->mUseLEDForG:Z

    if-eqz v0, :cond_2

    .line 190
    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 192
    if-lt p3, v2, :cond_0

    if-lt p4, v2, :cond_0

    .line 193
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingTask:Lcom/android/server/LightsService$FlashingTask;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$FlashingTask;

    move-result-object v0

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/LightsService$FlashingTask;->flashingStart(Lcom/android/server/LightsService$Light;IIII)V

    .line 200
    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/LightsService$Light;->mFlashing:Z

    .line 208
    :goto_1
    monitor-exit p0

    .line 209
    :goto_2
    return-void

    .line 195
    :cond_0
    monitor-exit p0

    goto :goto_2

    .line 208
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 198
    :cond_1
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    goto :goto_0

    .line 204
    :cond_2
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1
.end method

.method public setFlashing(IIIIZJ)V
    .locals 1
    .parameter "color"
    .parameter "mode"
    .parameter "onMS"
    .parameter "offMS"
    .parameter "ignoreLCD"
    .parameter "initTime"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #setter for: Lcom/android/server/LightsService;->mIgnoreFlashingDefendOnLCD:Z
    invoke-static {v0, p5}, Lcom/android/server/LightsService;->access$302(Lcom/android/server/LightsService;Z)Z

    .line 181
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #setter for: Lcom/android/server/LightsService;->mFlashingInitTime:J
    invoke-static {v0, p6, p7}, Lcom/android/server/LightsService;->access$402(Lcom/android/server/LightsService;J)J

    .line 182
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/LightsService$Light;->setFlashing(IIII)V

    .line 183
    return-void
.end method

.method public setLCDState(Z)V
    .locals 1
    .parameter "screenOn"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #setter for: Lcom/android/server/LightsService;->mScreenOn:Z
    invoke-static {v0, p1}, Lcom/android/server/LightsService;->access$802(Lcom/android/server/LightsService;Z)Z

    .line 321
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    iget-boolean v0, v0, Lcom/android/server/LightsService;->mFlashingDefendOnLCD:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mIgnoreFlashingDefendOnLCD:Z
    invoke-static {v0}, Lcom/android/server/LightsService;->access$300(Lcom/android/server/LightsService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 322
    if-eqz p1, :cond_1

    .line 323
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingTask:Lcom/android/server/LightsService$FlashingTask;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$FlashingTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/LightsService$FlashingTask;->lcdStateChanged()V

    .line 329
    :cond_0
    :goto_0
    return-void

    .line 326
    :cond_1
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingTask:Lcom/android/server/LightsService$FlashingTask;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$FlashingTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/LightsService$FlashingTask;->lcdStateChanged()V

    goto :goto_0
.end method

.method public turnOff()V
    .locals 8

    .prologue
    .line 226
    monitor-enter p0

    .line 228
    :try_start_0
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    iget-boolean v0, v0, Lcom/android/server/LightsService;->mUseLEDForG:Z

    if-eqz v0, :cond_2

    .line 229
    const-string v0, "LightsService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOff mId:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/server/LightsService$Light;->mId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFlashing:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/LightsService$Light;->mFlashing:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    iget v0, p0, Lcom/android/server/LightsService$Light;->mId:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 232
    iget-boolean v6, p0, Lcom/android/server/LightsService$Light;->mFlashing:Z

    .line 233
    .local v6, flashingLastState:Z
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/LightsService$Light;->mFlashing:Z

    .line 235
    if-eqz v6, :cond_0

    .line 236
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mFlashingTask:Lcom/android/server/LightsService$FlashingTask;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$500(Lcom/android/server/LightsService;)Lcom/android/server/LightsService$FlashingTask;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/LightsService$FlashingTask;->flashingFinish(Lcom/android/server/LightsService$Light;)V

    .line 237
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    .line 238
    new-instance v7, Landroid/content/Intent;

    const-string v0, "com.lge.intent.action.LED_FLASHING_STOP"

    invoke-direct {v7, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 239
    .local v7, intent:Landroid/content/Intent;
    iget-object v0, p0, Lcom/android/server/LightsService$Light;->this$0:Lcom/android/server/LightsService;

    #getter for: Lcom/android/server/LightsService;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/server/LightsService;->access$700(Lcom/android/server/LightsService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 251
    .end local v6           #flashingLastState:Z
    .end local v7           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    monitor-exit p0

    .line 252
    return-void

    .line 243
    :cond_1
    iget v1, p0, Lcom/android/server/LightsService$Light;->mColor:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V

    goto :goto_0

    .line 251
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 247
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    :try_start_1
    invoke-direct/range {v0 .. v5}, Lcom/android/server/LightsService$Light;->setLightLocked(IIIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
