.class public interface abstract Landroid/os/freeze/IYLAppFreezeListener;
.super Ljava/lang/Object;
.source "IYLAppFreezeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/freeze/IYLAppFreezeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFreezeSet(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onUnfreezeSet(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
