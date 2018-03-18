.class public interface abstract Landroid/location/IGpsProviderListener;
.super Ljava/lang/Object;
.source "IGpsProviderListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/location/IGpsProviderListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onAppGpsLocationChanged(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
