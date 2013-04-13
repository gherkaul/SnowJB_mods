.class public interface abstract Lcom/lge/app/atsagent/IEta2Service;
.super Ljava/lang/Object;
.source "IEta2Service.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/app/atsagent/IEta2Service$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerCallback(Lcom/lge/app/atsagent/IEta2ServiceCallback;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterCallback(Lcom/lge/app/atsagent/IEta2ServiceCallback;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
