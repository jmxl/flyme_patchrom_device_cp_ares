.class public Lcom/android/server/notification/XmlIntegerHelper;
.super Lcom/android/server/notification/XmlBaseHelper;
.source "XmlIntegerHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/notification/XmlBaseHelper",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/android/server/notification/XmlIntegerHelper$1;

    invoke-direct {v0}, Lcom/android/server/notification/XmlIntegerHelper$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/notification/XmlBaseHelper;-><init>(Lcom/android/server/notification/XmlBaseHelper$TypeConvers;)V

    .line 5
    return-void
.end method
