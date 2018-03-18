.class public interface abstract Landroid/app/usage/IForegroundAppChangeCallback;
.super Ljava/lang/Object;
.source "IForegroundAppChangeCallback.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/IForegroundAppChangeCallback$Stub;
    }
.end annotation


# virtual methods
.method public abstract foregroundAppChange()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
