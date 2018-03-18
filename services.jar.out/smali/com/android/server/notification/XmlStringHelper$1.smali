.class final Lcom/android/server/notification/XmlStringHelper$1;
.super Ljava/lang/Object;
.source "XmlStringHelper.java"

# interfaces
.implements Lcom/android/server/notification/XmlBaseHelper$TypeConvers;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/notification/XmlStringHelper;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/server/notification/XmlBaseHelper$TypeConvers",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic KToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;

    .prologue
    .line 13
    check-cast p1, Ljava/lang/String;

    .end local p1    # "k":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/notification/XmlStringHelper$1;->KToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public KToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "k"    # Ljava/lang/String;

    .prologue
    .line 14
    return-object p1
.end method

.method public bridge synthetic StringToK(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 23
    invoke-virtual {p0, p1}, Lcom/android/server/notification/XmlStringHelper$1;->StringToK(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public StringToK(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 24
    return-object p1
.end method

.method public bridge synthetic StringToV(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-virtual {p0, p1}, Lcom/android/server/notification/XmlStringHelper$1;->StringToV(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public StringToV(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "str"    # Ljava/lang/String;

    .prologue
    .line 29
    return-object p1
.end method

.method public bridge synthetic VToString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 18
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/notification/XmlStringHelper$1;->VToString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public VToString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 19
    return-object p1
.end method

.method public bridge synthetic canItemIgnore(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "v"    # Ljava/lang/Object;

    .prologue
    .line 8
    check-cast p1, Ljava/lang/String;

    .end local p1    # "v":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/notification/XmlStringHelper$1;->canItemIgnore(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public canItemIgnore(Ljava/lang/String;)Z
    .locals 1
    .param p1, "v"    # Ljava/lang/String;

    .prologue
    .line 9
    const/4 v0, 0x0

    return v0
.end method
