.class public interface abstract Lcom/journeyui/smartpolicy/ISmartpolicyListener;
.super Ljava/lang/Object;
.source "ISmartpolicyListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/journeyui/smartpolicy/ISmartpolicyListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onModeChanged(JJLjava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onModeChanged2(JJLcom/journeyui/smartpolicy/AppInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
