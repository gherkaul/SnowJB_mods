.class public abstract Lcom/lge/app/atsagent/IEta2ServiceCallback$Stub;
.super Landroid/os/Binder;
.source "IEta2ServiceCallback.java"

# interfaces
.implements Lcom/lge/app/atsagent/IEta2ServiceCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lge/app/atsagent/IEta2ServiceCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/atsagent/IEta2ServiceCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.lge.app.atsagent.IEta2ServiceCallback"

.field static final TRANSACTION_invokeAction:I = 0x2

.field static final TRANSACTION_invokeMethod:I = 0x3

.field static final TRANSACTION_invokeScript:I = 0x4

.field static final TRANSACTION_runUICommand:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string v0, "com.lge.app.atsagent.IEta2ServiceCallback"

    invoke-virtual {p0, p0, v0}, Lcom/lge/app/atsagent/IEta2ServiceCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 16
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/lge/app/atsagent/IEta2ServiceCallback;
    .locals 2
    .parameter "obj"

    .prologue
    .line 23
    if-nez p0, :cond_0

    .line 24
    const/4 v0, 0x0

    .line 30
    :goto_0
    return-object v0

    .line 26
    :cond_0
    const-string v1, "com.lge.app.atsagent.IEta2ServiceCallback"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/lge/app/atsagent/IEta2ServiceCallback;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Lcom/lge/app/atsagent/IEta2ServiceCallback;

    goto :goto_0

    .line 30
    :cond_1
    new-instance v0, Lcom/lge/app/atsagent/IEta2ServiceCallback$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/lge/app/atsagent/IEta2ServiceCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 124
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 42
    :sswitch_0
    const-string v5, "com.lge.app.atsagent.IEta2ServiceCallback"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 47
    :sswitch_1
    const-string v6, "com.lge.app.atsagent.IEta2ServiceCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 51
    .local v0, _arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    move v1, v4

    .line 52
    .local v1, _arg1:Z
    :goto_1
    invoke-virtual {p0, v0, v1}, Lcom/lge/app/atsagent/IEta2ServiceCallback$Stub;->runUICommand(IZ)Lcom/lge/app/atsagent/UiElement;

    move-result-object v3

    .line 53
    .local v3, _result:Lcom/lge/app/atsagent/UiElement;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    if-eqz v3, :cond_1

    .line 55
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    invoke-virtual {v3, p3, v4}, Lcom/lge/app/atsagent/UiElement;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .end local v1           #_arg1:Z
    .end local v3           #_result:Lcom/lge/app/atsagent/UiElement;
    :cond_0
    move v1, v5

    .line 51
    goto :goto_1

    .line 59
    .restart local v1       #_arg1:Z
    .restart local v3       #_result:Lcom/lge/app/atsagent/UiElement;
    :cond_1
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 65
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Z
    .end local v3           #_result:Lcom/lge/app/atsagent/UiElement;
    :sswitch_2
    const-string v5, "com.lge.app.atsagent.IEta2ServiceCallback"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 67
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 69
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    sget-object v5, Lcom/lge/app/atsagent/ActionRequest;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/atsagent/ActionRequest;

    .line 75
    .local v1, _arg1:Lcom/lge/app/atsagent/ActionRequest;
    :goto_2
    invoke-virtual {p0, v0, v1}, Lcom/lge/app/atsagent/IEta2ServiceCallback$Stub;->invokeAction(ILcom/lge/app/atsagent/ActionRequest;)I

    move-result v3

    .line 76
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 73
    .end local v1           #_arg1:Lcom/lge/app/atsagent/ActionRequest;
    .end local v3           #_result:I
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/lge/app/atsagent/ActionRequest;
    goto :goto_2

    .line 82
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lcom/lge/app/atsagent/ActionRequest;
    :sswitch_3
    const-string v6, "com.lge.app.atsagent.IEta2ServiceCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 86
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_3

    .line 87
    sget-object v6, Lcom/lge/app/atsagent/MethodDescription;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v6, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lge/app/atsagent/MethodDescription;

    .line 92
    .local v1, _arg1:Lcom/lge/app/atsagent/MethodDescription;
    :goto_3
    invoke-virtual {p0, v0, v1}, Lcom/lge/app/atsagent/IEta2ServiceCallback$Stub;->invokeMethod(ILcom/lge/app/atsagent/MethodDescription;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v3

    .line 93
    .local v3, _result:Lcom/lge/app/atsagent/ActionResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 94
    if-eqz v3, :cond_4

    .line 95
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    invoke-virtual {v3, p3, v4}, Lcom/lge/app/atsagent/ActionResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    .line 90
    .end local v1           #_arg1:Lcom/lge/app/atsagent/MethodDescription;
    .end local v3           #_result:Lcom/lge/app/atsagent/ActionResponse;
    :cond_3
    const/4 v1, 0x0

    .restart local v1       #_arg1:Lcom/lge/app/atsagent/MethodDescription;
    goto :goto_3

    .line 99
    .restart local v3       #_result:Lcom/lge/app/atsagent/ActionResponse;
    :cond_4
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 105
    .end local v0           #_arg0:I
    .end local v1           #_arg1:Lcom/lge/app/atsagent/MethodDescription;
    .end local v3           #_result:Lcom/lge/app/atsagent/ActionResponse;
    :sswitch_4
    const-string v6, "com.lge.app.atsagent.IEta2ServiceCallback"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 107
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 109
    .restart local v0       #_arg0:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 111
    .local v1, _arg1:I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 112
    .local v2, _arg2:Ljava/lang/String;
    invoke-virtual {p0, v0, v1, v2}, Lcom/lge/app/atsagent/IEta2ServiceCallback$Stub;->invokeScript(IILjava/lang/String;)Lcom/lge/app/atsagent/ActionResponse;

    move-result-object v3

    .line 113
    .restart local v3       #_result:Lcom/lge/app/atsagent/ActionResponse;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    if-eqz v3, :cond_5

    .line 115
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 116
    invoke-virtual {v3, p3, v4}, Lcom/lge/app/atsagent/ActionResponse;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 119
    :cond_5
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 38
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
