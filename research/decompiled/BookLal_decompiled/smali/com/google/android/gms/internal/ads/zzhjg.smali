.class public final Lcom/google/android/gms/internal/ads/zzhjg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhch;


# instance fields
.field private final zza:[B

.field private final zzb:[B

.field private final zzc:Ljava/security/Provider;


# direct methods
.method private constructor <init>([B[BLjava/security/Provider;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhjs;->zza(I)Z

    move-result v0

    if-eqz v0, :cond_1

    array-length v0, p1

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhjg;->zza:[B

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhjg;->zzb:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhjg;->zzc:Ljava/security/Provider;

    return-void

    :cond_0
    new-instance p1, Ljava/security/InvalidKeyException;

    const-string p2, "The key length in bytes must be 32."

    invoke-direct {p1, p2}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use ChaCha20Poly1305 in FIPS-mode."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhhg;)Lcom/google/android/gms/internal/ads/zzhch;
    .locals 4

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhil;->zzc()Ljavax/crypto/Cipher;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhjg;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhhg;->zze()Lcom/google/android/gms/internal/ads/zziaa;

    move-result-object v2

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/internal/ads/zziaa;->zzc(Lcom/google/android/gms/internal/ads/zzhdi;)[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhhg;->zzc()Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzy;->zzc()[B

    move-result-object p0

    invoke-virtual {v0}, Ljavax/crypto/Cipher;->getProvider()Ljava/security/Provider;

    move-result-object v0

    invoke-direct {v1, v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzhjg;-><init>([B[BLjava/security/Provider;)V

    return-object v1
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 10

    const/16 v0, 0x18

    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhjg;->zzb:[B

    array-length v2, p1

    array-length v3, v1

    add-int/lit8 v4, v3, 0x28

    if-lt v2, v4, :cond_2

    invoke-static {v1, p1}, Lcom/google/android/gms/internal/ads/zzhnc;->zze([B[B)Z

    move-result v1

    if-eqz v1, :cond_1

    new-array v1, v0, [B

    const/4 v4, 0x0

    invoke-static {p1, v3, v1, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhjg;->zza:[B

    invoke-static {v4}, Lcom/google/android/gms/internal/ads/zzhir;->zzd([B)[I

    move-result-object v4

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhir;->zzd([B)[I

    move-result-object v5

    invoke-static {v4, v5}, Lcom/google/android/gms/internal/ads/zzhir;->zze([I[I)[I

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x4

    mul-int/2addr v5, v6

    invoke-static {v5}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    sget-object v7, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/nio/IntBuffer;->put([I)Ljava/nio/IntBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    new-instance v5, Ljavax/crypto/spec/SecretKeySpec;

    const-string v7, "ChaCha20"

    invoke-direct {v5, v4, v7}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    new-instance v4, Ljavax/crypto/spec/IvParameterSpec;

    const/16 v7, 0xc

    new-array v7, v7, [B

    const/16 v8, 0x8

    const/16 v9, 0x10

    invoke-static {v1, v9, v7, v6, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-direct {v4, v7}, Ljavax/crypto/spec/IvParameterSpec;-><init>([B)V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzhjg;->zzc:Ljava/security/Provider;

    sget v6, Lcom/google/android/gms/internal/ads/zzhil;->zza:I

    const-string v6, "ChaCha20-Poly1305"

    invoke-static {v6, v1}, Ljavax/crypto/Cipher;->getInstance(Ljava/lang/String;Ljava/security/Provider;)Ljavax/crypto/Cipher;

    move-result-object v1

    const/4 v6, 0x2

    invoke-virtual {v1, v6, v5, v4}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    array-length v4, p2

    if-eqz v4, :cond_0

    invoke-virtual {v1, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    add-int/2addr v0, v3

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x18

    invoke-virtual {v1, p1, v0, v2}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "ciphertext too short"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
