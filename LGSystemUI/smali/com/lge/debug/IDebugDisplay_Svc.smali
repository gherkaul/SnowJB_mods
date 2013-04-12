.class public interface abstract Lcom/lge/debug/IDebugDisplay_Svc;
.super Ljava/lang/Object;
.source "IDebugDisplay_Svc.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/lge/debug/IDebugDisplay_Svc$Stub;
    }
.end annotation


# virtual methods
.method public abstract registerDisplay(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
