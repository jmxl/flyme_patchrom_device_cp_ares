.class public interface abstract Lcom/zeusis/touchframe/IThumbListener;
.super Ljava/lang/Object;
.source "IThumbListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeusis/touchframe/IThumbListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onTouchEvent(Landroid/view/MotionEvent;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
