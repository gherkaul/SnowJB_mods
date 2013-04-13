.class public interface abstract Lcom/lge/app/atsagent/IEta2ServiceCallback;
.super Ljava/lang/Object;
.source "IEta2ServiceCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/atsagent/IEta2ServiceCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract invokeAction(ILcom/lge/app/atsagent/ActionRequest;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract invokeMethod(ILcom/lge/app/atsagent/MethodDescription;)Lcom/lge/app/atsagent/ActionResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract invokeScript(IILjava/lang/String;)Lcom/lge/app/atsagent/ActionResponse;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract runUICommand(IZ)Lcom/lge/app/atsagent/UiElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
