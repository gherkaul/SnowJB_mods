.class Lcom/lge/quicksettings/handlers/AirplaneHandler$1;
.super Landroid/telephony/PhoneStateListener;
.source "AirplaneHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lge/quicksettings/handlers/AirplaneHandler;-><init>(Landroid/content/Context;Lcom/lge/quicksettings/QuickSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;


# direct methods
.method constructor <init>(Lcom/lge/quicksettings/handlers/AirplaneHandler;)V
    .locals 0
    .parameter

    .prologue
    .line 70
    iput-object p1, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$1;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 1
    .parameter "state"
    .parameter "incomingNumber"

    .prologue
    .line 81
    iget-object v0, p0, Lcom/lge/quicksettings/handlers/AirplaneHandler$1;->this$0:Lcom/lge/quicksettings/handlers/AirplaneHandler;

    #setter for: Lcom/lge/quicksettings/handlers/AirplaneHandler;->mCallState:I
    invoke-static {v0, p1}, Lcom/lge/quicksettings/handlers/AirplaneHandler;->access$002(Lcom/lge/quicksettings/handlers/AirplaneHandler;I)I

    .line 82
    return-void
.end method

.method public onDataActivity(I)V
    .locals 0
    .parameter "direction"

    .prologue
    .line 90
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 0
    .parameter "state"
    .parameter "networkType"

    .prologue
    .line 86
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "state"

    .prologue
    .line 77
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0
    .parameter "signalStrength"

    .prologue
    .line 73
    return-void
.end method
