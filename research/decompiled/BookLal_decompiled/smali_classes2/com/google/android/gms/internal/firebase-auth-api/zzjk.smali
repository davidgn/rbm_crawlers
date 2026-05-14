.class final Lcom/google/android/gms/internal/firebase-auth-api/zzjk;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/firebase-auth-api/zzjb;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/firebase-auth-api/zziw;

.field private final zzb:I


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/firebase-auth-api/zziw;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zziw;

    iput p2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjk;->zzb:I

    return-void
.end method

.method public static zzc(I)Lcom/google/android/gms/internal/firebase-auth-api/zzjk;
    .locals 3

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x1

    if-eqz p0, :cond_1

    if-eq p0, v0, :cond_0

    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjk;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zziw;

    const-string v1, "HmacSha512"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zziw;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjk;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zziw;I)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjk;

    new-instance v0, Lcom/google/android/gms/internal/firebase-auth-api/zziw;

    const-string v1, "HmacSha384"

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zziw;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjk;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zziw;I)V

    return-object p0

    :cond_1
    new-instance p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjk;

    new-instance v1, Lcom/google/android/gms/internal/firebase-auth-api/zziw;

    const-string v2, "HmacSha256"

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/firebase-auth-api/zziw;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjk;-><init>(Lcom/google/android/gms/internal/firebase-auth-api/zziw;I)V

    return-object p0
.end method


# virtual methods
.method public final zza([BLcom/google/android/gms/internal/firebase-auth-api/zzjc;)[B
    .locals 10

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjk;->zzb:I

    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzjc;->zza()Lcom/google/android/gms/internal/firebase-auth-api/zzvx;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzvx;->zzc()[B

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzut;->zzg(I[B)Ljava/security/interfaces/ECPrivateKey;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjk;->zzb:I

    invoke-static {v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzut;->zzi(I)Ljava/security/spec/ECParameterSpec;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2, p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzut;->zzh(Ljava/security/spec/ECParameterSpec;I[B)Ljava/security/interfaces/ECPublicKey;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/firebase-auth-api/zzut;->zzf(Ljava/security/interfaces/ECPrivateKey;Ljava/security/interfaces/ECPublicKey;)[B

    move-result-object v4

    invoke-interface {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzjc;->zzb()Lcom/google/android/gms/internal/firebase-auth-api/zzvx;

    move-result-object p2

    invoke-virtual {p2}, Lcom/google/android/gms/internal/firebase-auth-api/zzvx;->zzc()[B

    move-result-object p2

    filled-new-array {p1, p2}, [[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzum;->zzb([[B)[B

    move-result-object v6

    invoke-virtual {p0}, Lcom/google/android/gms/internal/firebase-auth-api/zzjk;->zzb()[B

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/firebase-auth-api/zzjj;->zzd([B)[B

    move-result-object v8

    iget-object v2, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjk;->zza:Lcom/google/android/gms/internal/firebase-auth-api/zziw;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/firebase-auth-api/zziw;->zza()I

    move-result v9

    const-string v7, "shared_secret"

    const-string v5, "eae_prk"

    const/4 v3, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/google/android/gms/internal/firebase-auth-api/zziw;->zzb([B[BLjava/lang/String;[BLjava/lang/String;[BI)[B

    move-result-object p1

    return-object p1
.end method

.method public final zzb()[B
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/firebase-auth-api/zzjk;->zzb:I

    add-int/lit8 v0, v0, -0x1

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjj;->zze:[B

    return-object v0

    :cond_0
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjj;->zzd:[B

    return-object v0

    :cond_1
    sget-object v0, Lcom/google/android/gms/internal/firebase-auth-api/zzjj;->zzc:[B

    return-object v0
.end method
