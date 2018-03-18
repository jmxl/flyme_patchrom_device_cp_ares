.class public final Lse/dirac/android/Dumpable$Writer;
.super Ljava/lang/Object;
.source "Dumpable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lse/dirac/android/Dumpable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Writer"
.end annotation


# instance fields
.field private final writer:Ljava/io/PrintWriter;


# direct methods
.method public constructor <init>(Ljava/io/PrintWriter;)V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lse/dirac/android/Dumpable$Writer;->writer:Ljava/io/PrintWriter;

    .line 9
    return-void
.end method


# virtual methods
.method public a(C)Lse/dirac/android/Dumpable$Writer;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lse/dirac/android/Dumpable$Writer;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(C)V

    .line 18
    return-object p0
.end method

.method public a(D)Lse/dirac/android/Dumpable$Writer;
    .locals 1

    .prologue
    .line 12
    iget-object v0, p0, Lse/dirac/android/Dumpable$Writer;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2}, Ljava/io/PrintWriter;->print(D)V

    .line 13
    return-object p0
.end method

.method public a(F)Lse/dirac/android/Dumpable$Writer;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lse/dirac/android/Dumpable$Writer;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(F)V

    .line 33
    return-object p0
.end method

.method public a(I)Lse/dirac/android/Dumpable$Writer;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lse/dirac/android/Dumpable$Writer;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 43
    return-object p0
.end method

.method public a(J)Lse/dirac/android/Dumpable$Writer;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lse/dirac/android/Dumpable$Writer;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1, p2}, Ljava/io/PrintWriter;->print(J)V

    .line 28
    return-object p0
.end method

.method public a(Ljava/lang/Object;)Lse/dirac/android/Dumpable$Writer;
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lse/dirac/android/Dumpable$Writer;->writer:Ljava/io/PrintWriter;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 53
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lse/dirac/android/Dumpable$Writer;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lse/dirac/android/Dumpable$Writer;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 48
    return-object p0
.end method

.method public a(Z)Lse/dirac/android/Dumpable$Writer;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lse/dirac/android/Dumpable$Writer;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(Z)V

    .line 23
    return-object p0
.end method

.method public a([C)Lse/dirac/android/Dumpable$Writer;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lse/dirac/android/Dumpable$Writer;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print([C)V

    .line 38
    return-object p0
.end method

.method public nl()Lse/dirac/android/Dumpable$Writer;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lse/dirac/android/Dumpable$Writer;->writer:Ljava/io/PrintWriter;

    invoke-virtual {v0}, Ljava/io/PrintWriter;->println()V

    .line 64
    return-object p0
.end method

.method public pad(I)Lse/dirac/android/Dumpable$Writer;
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 57
    :goto_0
    if-lt v0, p1, :cond_0

    .line 59
    return-object p0

    .line 58
    :cond_0
    iget-object v1, p0, Lse/dirac/android/Dumpable$Writer;->writer:Ljava/io/PrintWriter;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->append(C)Ljava/io/PrintWriter;

    .line 57
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
