.class public interface abstract Lcom/zeusis/touchframe/IScreenshotListener;
.super Ljava/lang/Object;
.source "IScreenshotListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zeusis/touchframe/IScreenshotListener$Stub;
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
