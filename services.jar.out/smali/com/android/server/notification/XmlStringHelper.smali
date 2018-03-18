.class public Lcom/android/server/notification/XmlStringHelper;
.super Lcom/android/server/notification/XmlBaseHelper;
.source "XmlStringHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/notification/XmlBaseHelper",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 6
    new-instance v0, Lcom/android/server/notification/XmlStringHelper$1;

    invoke-direct {v0}, Lcom/android/server/notification/XmlStringHelper$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/notification/XmlBaseHelper;-><init>(Lcom/android/server/notification/XmlBaseHelper$TypeConvers;)V

    .line 5
    return-void
.end method
