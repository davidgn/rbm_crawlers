.class public final Lcom/google/protobuf/k;
.super Lcom/google/protobuf/l;
.source "SourceFile"


# instance fields
.field public final e:I

.field public final f:I


# direct methods
.method public constructor <init>([BII)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/protobuf/l;-><init>([B)V

    add-int v0, p2, p3

    array-length p1, p1

    invoke-static {p2, v0, p1}, Lcom/google/protobuf/m;->l(III)I

    iput p2, p0, Lcom/google/protobuf/k;->e:I

    iput p3, p0, Lcom/google/protobuf/k;->f:I

    return-void
.end method


# virtual methods
.method public final C()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/k;->e:I

    return v0
.end method

.method public final j(I)B
    .locals 1

    iget v0, p0, Lcom/google/protobuf/k;->f:I

    invoke-static {p1, v0}, Lcom/google/protobuf/m;->k(II)V

    iget v0, p0, Lcom/google/protobuf/k;->e:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/protobuf/l;->d:[B

    aget-byte p1, p1, v0

    return p1
.end method

.method public final o(I[BII)V
    .locals 1

    iget v0, p0, Lcom/google/protobuf/k;->e:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/protobuf/l;->d:[B

    invoke-static {p1, v0, p2, p3, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method public final q(I)B
    .locals 1

    iget v0, p0, Lcom/google/protobuf/k;->e:I

    add-int/2addr v0, p1

    iget-object p1, p0, Lcom/google/protobuf/l;->d:[B

    aget-byte p1, p1, v0

    return p1
.end method

.method public final size()I
    .locals 1

    iget v0, p0, Lcom/google/protobuf/k;->f:I

    return v0
.end method
