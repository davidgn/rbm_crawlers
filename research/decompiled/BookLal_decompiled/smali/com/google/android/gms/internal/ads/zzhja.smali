.class public final Lcom/google/android/gms/internal/ads/zzhja;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhch;


# instance fields
.field private final zza:[B

.field private final zzb:I

.field private final zzc:Lcom/google/android/gms/internal/ads/zzhpe;


# direct methods
.method private constructor <init>([BLcom/google/android/gms/internal/ads/zzhzy;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhpd;->zzb(I)Lcom/google/android/gms/internal/ads/zzhpd;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/google/android/gms/internal/ads/zziaa;->zza([BLcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zziaa;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhpc;->zzc(Lcom/google/android/gms/internal/ads/zzhpd;Lcom/google/android/gms/internal/ads/zziaa;)Lcom/google/android/gms/internal/ads/zzhpc;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhzl;->zzb(Lcom/google/android/gms/internal/ads/zzhpc;)Lcom/google/android/gms/internal/ads/zzhpe;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhja;->zzc:Lcom/google/android/gms/internal/ads/zzhpe;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/zzhzy;->zzc()[B

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhja;->zza:[B

    iput p3, p0, Lcom/google/android/gms/internal/ads/zzhja;->zzb:I

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhha;)Lcom/google/android/gms/internal/ads/zzhch;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhha;->zzf()Lcom/google/android/gms/internal/ads/zzhhf;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhha;->zzf()Lcom/google/android/gms/internal/ads/zzhhf;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhja;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhha;->zze()Lcom/google/android/gms/internal/ads/zziaa;

    move-result-object v1

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zziaa;->zzc(Lcom/google/android/gms/internal/ads/zzhdi;)[B

    move-result-object v1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhha;->zzc()Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhha;->zzf()Lcom/google/android/gms/internal/ads/zzhhf;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhhf;->zzd()I

    move-result p0

    invoke-direct {v0, v1, v2, p0}, Lcom/google/android/gms/internal/ads/zzhja;-><init>([BLcom/google/android/gms/internal/ads/zzhzy;I)V

    return-object v0
.end method


# virtual methods
.method public final zza([B[B)[B
    .locals 12

    const/16 v0, 0xc

    const/4 v1, 0x2

    const/16 v2, 0x10

    const/4 v3, 0x0

    if-eqz p1, :cond_7

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhja;->zza:[B

    iget v5, p0, Lcom/google/android/gms/internal/ads/zzhja;->zzb:I

    array-length v6, p1

    array-length v7, v4

    add-int/2addr v5, v7

    add-int/lit8 v8, v5, 0x1c

    const-string v9, "ciphertext too short"

    if-lt v6, v8, :cond_6

    invoke-static {v4, p1}, Lcom/google/android/gms/internal/ads/zzhnc;->zze([B[B)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-static {p1, v7, v5}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    new-array v7, v2, [B

    fill-array-data v7, :array_0

    new-array v8, v2, [B

    fill-array-data v8, :array_1

    array-length v10, v4

    if-gt v10, v0, :cond_4

    const/16 v11, 0x8

    if-lt v10, v11, :cond_4

    const/4 v11, 0x4

    invoke-static {v4, v3, v7, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v4, v3, v8, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/zzhja;->zzc:Lcom/google/android/gms/internal/ads/zzhpe;

    const/16 v10, 0x20

    new-array v10, v10, [B

    invoke-interface {v4, v7, v2}, Lcom/google/android/gms/internal/ads/zzhpe;->zza([BI)[B

    move-result-object v7

    invoke-static {v7, v3, v10, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-interface {v4, v8, v2}, Lcom/google/android/gms/internal/ads/zzhpe;->zza([BI)[B

    move-result-object v4

    invoke-static {v4, v3, v10, v2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/zzhjs;->zza(I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-static {v10}, Lcom/google/android/gms/internal/ads/zzhhy;->zzb([B)Ljavax/crypto/SecretKey;

    move-result-object v2

    add-int/lit8 v4, v5, 0xc

    invoke-static {p1, v5, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    array-length v8, v7

    if-ne v8, v0, :cond_2

    add-int/lit8 v5, v5, 0x1c

    if-lt v6, v5, :cond_1

    invoke-static {v7, v3, v0}, Lcom/google/android/gms/internal/ads/zzhhy;->zzc([BII)Ljava/security/spec/AlgorithmParameterSpec;

    move-result-object v0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhhy;->zza()Ljavax/crypto/Cipher;

    move-result-object v3

    invoke-virtual {v3, v1, v2, v0}, Ljavax/crypto/Cipher;->init(ILjava/security/Key;Ljava/security/spec/AlgorithmParameterSpec;)V

    if-eqz p2, :cond_0

    array-length v0, p2

    if-eqz v0, :cond_0

    invoke-virtual {v3, p2}, Ljavax/crypto/Cipher;->updateAAD([B)V

    :cond_0
    sub-int/2addr v6, v4

    invoke-virtual {v3, p1, v4, v6}, Ljavax/crypto/Cipher;->doFinal([BII)[B

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v9}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "iv is wrong size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Can not use AES-GCM in FIPS-mode, as BoringCrypto module is not available."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "invalid salt size"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Decryption failed (OutputPrefix mismatch)."

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    new-instance p1, Ljava/security/GeneralSecurityException;

    invoke-direct {p1, v9}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_7
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "ciphertext is null"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    :array_0
    .array-data 1
        0x0t
        0x1t
        0x58t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x2t
        0x58t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
