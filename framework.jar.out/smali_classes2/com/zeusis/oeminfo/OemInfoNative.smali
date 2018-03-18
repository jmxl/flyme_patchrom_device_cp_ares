.class public Lcom/zeusis/oeminfo/OemInfoNative;
.super Ljava/lang/Object;
.source "OemInfoNative.java"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-string/jumbo v0, "oeminfo"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 6
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native closeOemInfo()V
.end method

.method public static native getData(Ljava/lang/String;II)[B
.end method

.method public static native getElem(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public static native openOemInfo()V
.end method

.method public static native setData(Ljava/lang/String;II[B)I
.end method

.method public static native setElem(Ljava/lang/String;Ljava/lang/String;[B)I
.end method
