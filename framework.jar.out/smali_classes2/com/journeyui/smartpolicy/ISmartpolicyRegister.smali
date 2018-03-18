.class public interface abstract Lcom/journeyui/smartpolicy/ISmartpolicyRegister;
.super Ljava/lang/Object;
.source "ISmartpolicyRegister.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyui/smartpolicy/ISmartpolicyRegister$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFactorChanged(JJJLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerListener(Lcom/journeyui/smartpolicy/ISmartpolicyListener;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterListener(Lcom/journeyui/smartpolicy/ISmartpolicyListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
