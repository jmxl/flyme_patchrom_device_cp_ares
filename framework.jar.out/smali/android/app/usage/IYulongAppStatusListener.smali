.class public interface abstract Landroid/app/usage/IYulongAppStatusListener;
.super Ljava/lang/Object;
.source "IYulongAppStatusListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/usage/IYulongAppStatusListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAppStatusChange(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
