.class public final Lcom/google/android/gms/internal/firebase-auth-api/zzur;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Ljava/security/interfaces/ECPrivateKey;


# direct methods
.method public constructor <init>(Ljava/security/interfaces/ECPrivateKey;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zza:Ljava/security/interfaces/ECPrivateKey;

    return-void
.end method


# virtual methods
.method public final zza([BLjava/lang/String;[B[BII)[B
    .locals 3

    iget-object p4, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zza:Ljava/security/interfaces/ECPrivateKey;

    invoke-interface {p4}, Ljava/security/interfaces/ECKey;->getParams()Ljava/security/spec/ECParameterSpec;

    move-result-object p4

    invoke-static {p4, p6, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzut;->zzh(Ljava/security/spec/ECParameterSpec;I[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object p4

    iget-object p6, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzur;->zza:Ljava/security/interfaces/ECPrivateKey;

    invoke-static {p6, p4}, Lcom/google/android/gms/internal/firebase-auth-api/zzut;->zzf(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object p4

    filled-new-array {p1, p4}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zzb([[B)[B

    move-result-object p1

    sget-object p4, Lcom/google/android/gms/internal/firebase-auth-api/zzvc;->zzb:Lcom/google/android/gms/internal/firebase-auth-api/zzvc;

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvc;->zza(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljavax/crypto/Mac;

    invoke-virtual {p4}, Ljavax/crypto/Mac;->getMacLength()I

    move-result p6

    mul-int/lit16 p6, p6, 0xff

    if-gt p5, p6, :cond_3

    if-eqz p3, :cond_1

    array-length p6, p3

    if-nez p6, :cond_0

    goto :goto_0

    :cond_0
    new-instance p6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p6, p3, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p4, p6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p3, Ljavax/crypto/spec/SecretKeySpec;

    invoke-virtual {p4}, Ljavax/crypto/Mac;->getMacLength()I

    move-result p6

    new-array p6, p6, [B

    invoke-direct {p3, p6, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p4, p3}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    :goto_1
    invoke-virtual {p4, p1}, Ljavax/crypto/Mac;->doFinal([B)[B

    move-result-object p1

    new-array p3, p5, [B

    new-instance p6, Ljavax/crypto/spec/SecretKeySpec;

    invoke-direct {p6, p1, p2}, Ljavax/crypto/spec/SecretKeySpec;-><init>([BLjava/lang/String;)V

    invoke-virtual {p4, p6}, Ljavax/crypto/Mac;->init(Ljava/security/Key;)V

    const/4 p1, 0x0

    new-array p2, p1, [B

    const/4 p6, 0x1

    move v0, p1

    :goto_2
    invoke-virtual {p4, p2}, Ljavax/crypto/Mac;->update([B)V

    const/4 p2, 0x0

    invoke-virtual {p4, p2}, Ljavax/crypto/Mac;->update([B)V

    int-to-byte p2, p6

    invoke-virtual {p4, p2}, Ljavax/crypto/Mac;->update(B)V

    invoke-virtual {p4}, Ljavax/crypto/Mac;->doFinal()[B

    move-result-object p2

    array-length v1, p2

    add-int v2, v0, v1

    if-ge v2, p5, :cond_2

    invoke-static {p2, p1, p3, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 p6, p6, 0x1

    move v0, v2

    goto :goto_2

    :cond_2
    sub-int/2addr p5, v0

    invoke-static {p2, p1, p3, v0, p5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object p3

    :cond_3
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "size too large"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
