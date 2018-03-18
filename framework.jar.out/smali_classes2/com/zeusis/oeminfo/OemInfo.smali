.class public Lcom/zeusis/oeminfo/OemInfo;
.super Ljava/lang/Object;
.source "OemInfo.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getData(Ljava/lang/String;II)[B
    .locals 1
    .param p0, "blockName"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I

    .prologue
    .line 71
    invoke-static {}, Lcom/zeusis/oeminfo/OemInfoNative;->openOemInfo()V

    .line 72
    invoke-static {p0, p1, p2}, Lcom/zeusis/oeminfo/OemInfoNative;->getData(Ljava/lang/String;II)[B

    move-result-object v0

    .line 73
    .local v0, "val":[B
    invoke-static {}, Lcom/zeusis/oeminfo/OemInfoNative;->closeOemInfo()V

    .line 75
    return-object v0
.end method

.method public static getElem(Ljava/lang/String;Ljava/lang/String;)[B
    .locals 1
    .param p0, "blockName"    # Ljava/lang/String;
    .param p1, "elemName"    # Ljava/lang/String;

    .prologue
    .line 36
    invoke-static {}, Lcom/zeusis/oeminfo/OemInfoNative;->openOemInfo()V

    .line 37
    invoke-static {p0, p1}, Lcom/zeusis/oeminfo/OemInfoNative;->getElem(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 38
    .local v0, "val":[B
    invoke-static {}, Lcom/zeusis/oeminfo/OemInfoNative;->closeOemInfo()V

    .line 40
    return-object v0
.end method

.method public static setData(Ljava/lang/String;II[B)I
    .locals 1
    .param p0, "blockName"    # Ljava/lang/String;
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "val"    # [B

    .prologue
    .line 54
    invoke-static {}, Lcom/zeusis/oeminfo/OemInfoNative;->openOemInfo()V

    .line 55
    invoke-static {p0, p1, p2, p3}, Lcom/zeusis/oeminfo/OemInfoNative;->setData(Ljava/lang/String;II[B)I

    move-result v0

    .line 56
    .local v0, "ret":I
    invoke-static {}, Lcom/zeusis/oeminfo/OemInfoNative;->closeOemInfo()V

    .line 58
    return v0
.end method

.method public static setElem(Ljava/lang/String;Ljava/lang/String;[B)I
    .locals 1
    .param p0, "blockName"    # Ljava/lang/String;
    .param p1, "elemName"    # Ljava/lang/String;
    .param p2, "val"    # [B

    .prologue
    .line 20
    invoke-static {}, Lcom/zeusis/oeminfo/OemInfoNative;->openOemInfo()V

    .line 21
    invoke-static {p0, p1, p2}, Lcom/zeusis/oeminfo/OemInfoNative;->setElem(Ljava/lang/String;Ljava/lang/String;[B)I

    move-result v0

    .line 22
    .local v0, "ret":I
    invoke-static {}, Lcom/zeusis/oeminfo/OemInfoNative;->closeOemInfo()V

    .line 24
    return v0
.end method
