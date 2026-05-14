.class public final Lb1/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb1/e;


# instance fields
.field public final b:Ly1/c;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ly1/c;

    invoke-direct {v0}, Lr/k;-><init>()V

    iput-object v0, p0, Lb1/h;->b:Ly1/c;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 6

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lb1/h;->b:Ly1/c;

    iget v2, v1, Lr/k;->c:I

    if-ge v0, v2, :cond_1

    invoke-virtual {v1, v0}, Lr/k;->h(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb1/g;

    iget-object v2, p0, Lb1/h;->b:Ly1/c;

    invoke-virtual {v2, v0}, Lr/k;->l(I)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v1, Lb1/g;->b:Lb1/f;

    iget-object v4, v1, Lb1/g;->d:[B

    if-nez v4, :cond_0

    iget-object v4, v1, Lb1/g;->c:Ljava/lang/String;

    sget-object v5, Lb1/e;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v4, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v4

    iput-object v4, v1, Lb1/g;->d:[B

    :cond_0
    iget-object v1, v1, Lb1/g;->d:[B

    invoke-interface {v3, v1, v2, p1}, Lb1/f;->c([BLjava/lang/Object;Ljava/security/MessageDigest;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final c(Lb1/g;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lb1/h;->b:Ly1/c;

    invoke-virtual {v0, p1}, Lr/k;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lr/k;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lb1/g;->a:Ljava/lang/Object;

    :goto_0
    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lb1/h;

    if-eqz v0, :cond_0

    check-cast p1, Lb1/h;

    iget-object v0, p0, Lb1/h;->b:Ly1/c;

    iget-object p1, p1, Lb1/h;->b:Ly1/c;

    invoke-virtual {v0, p1}, Lr/k;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final hashCode()I
    .locals 1

    iget-object v0, p0, Lb1/h;->b:Ly1/c;

    invoke-virtual {v0}, Ly1/c;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Options{values="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lb1/h;->b:Ly1/c;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
