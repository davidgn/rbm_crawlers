.class public final Lcom/google/android/gms/internal/ads/zzauk;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static zza()[B
    .locals 12

    const v0, 0x5b25ace2

    not-int v1, v0

    const v2, 0x70a0790

    and-int/2addr v1, v2

    const v2, 0x330b0e

    or-int/2addr v1, v2

    const v2, 0x27280493

    and-int/2addr v0, v2

    const v2, 0x30f56b4f

    or-int/2addr v0, v2

    add-int/2addr v1, v0

    const v0, 0x380f3d09

    sub-int/2addr v1, v0

    const v0, 0x3db012b3

    const v2, 0x3dd15094

    rem-int/2addr v2, v0

    const v0, 0x3fcfaed9

    not-int v3, v0

    const v4, 0x335e857

    and-int/2addr v3, v4

    const v4, 0x2c3293b0

    or-int/2addr v3, v4

    const v4, 0x63476a4f

    and-int/2addr v0, v4

    const v4, 0x68d20698

    or-int/2addr v0, v4

    add-int/2addr v3, v0

    const v0, 0x50fb761c

    sub-int/2addr v3, v0

    const v0, 0x16cf80f1

    const v4, 0x5cb44a05

    rem-int/2addr v4, v0

    xor-int v0, v3, v4

    xor-int/2addr v1, v2

    const v2, 0x4c04a8af    # 3.477574E7f

    const/16 v3, 0x9

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    const/4 v4, 0x0

    aget v4, v3, v4

    const/4 v5, 0x1

    aget v5, v3, v5

    const/4 v6, 0x2

    aget v6, v3, v6

    const/4 v7, 0x3

    aget v7, v3, v7

    const/4 v8, 0x4

    aget v8, v3, v8

    const/4 v9, 0x5

    aget v9, v3, v9

    const/4 v10, 0x6

    aget v10, v3, v10

    const/4 v11, 0x7

    aget v3, v3, v11

    not-int v11, v4

    and-int/2addr v5, v11

    or-int/2addr v5, v6

    and-int/2addr v4, v7

    or-int/2addr v4, v8

    invoke-static {v5, v4, v9, v10}, Lcom/google/android/gms/ads/internal/util/client/a;->r(IIII)I

    move-result v4

    rem-int/2addr v3, v2

    xor-int v2, v4, v3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    int-to-short v1, v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    return-object v0

    :array_0
    .array-data 4
        0x14e17e33
        0x4038e8a2
        0x68db0d72
        0x120e080
        0x2dd61648
        0x6e240f69
        0x1748396
        0x76272110
        0x4c04a8af    # 3.477574E7f
    .end array-data
.end method
