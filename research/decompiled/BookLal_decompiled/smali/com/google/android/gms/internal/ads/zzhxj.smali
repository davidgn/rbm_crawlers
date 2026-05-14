.class public final Lcom/google/android/gms/internal/ads/zzhxj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhdh;


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzhdh;

.field private final zzb:[B

.field private final zzc:[B


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzhdh;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhxj;->zza:Lcom/google/android/gms/internal/ads/zzhdh;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhxj;->zzb:[B

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhxj;->zzc:[B

    return-void
.end method

.method public static zzb(Lcom/google/android/gms/internal/ads/zzhld;)Lcom/google/android/gms/internal/ads/zzhdh;
    .locals 3

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhcm;->zza()Lcom/google/android/gms/internal/ads/zzhdi;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/zzhld;->zzc(Lcom/google/android/gms/internal/ads/zzhdi;)Lcom/google/android/gms/internal/ads/zzhmq;

    move-result-object p0

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhkr;->zza()Lcom/google/android/gms/internal/ads/zzhkr;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhmq;->zzg()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/google/android/gms/internal/ads/zzhdh;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/zzhkr;->zzc(Ljava/lang/String;Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzhcp;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhmq;->zzb()Lcom/google/android/gms/internal/ads/zzibz;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/zzhcp;->zza(Lcom/google/android/gms/internal/ads/zzibz;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/zzhdh;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzhxj;

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhxj;->zzc(Lcom/google/android/gms/internal/ads/zzhmq;)[B

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhxj;->zzd(Lcom/google/android/gms/internal/ads/zzhmq;)[B

    move-result-object p0

    invoke-direct {v1, v0, v2, p0}, Lcom/google/android/gms/internal/ads/zzhxj;-><init>(Lcom/google/android/gms/internal/ads/zzhdh;[B[B)V

    return-object v1
.end method

.method public static zzc(Lcom/google/android/gms/internal/ads/zzhmq;)[B
    .locals 2

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhmq;->zzd()Lcom/google/android/gms/internal/ads/zzhsn;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string v0, "unknown output prefix type"

    invoke-direct {p0, v0}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, Lcom/google/android/gms/internal/ads/zzhlw;->zza:Lcom/google/android/gms/internal/ads/zzhzy;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzy;->zzc()[B

    move-result-object p0

    return-object p0

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhmq;->zze()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhlw;->zza(I)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzy;->zzc()[B

    move-result-object p0

    return-object p0

    :cond_3
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhmq;->zze()Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhlw;->zzb(I)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object p0

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhzy;->zzc()[B

    move-result-object p0

    return-object p0
.end method

.method public static zzd(Lcom/google/android/gms/internal/ads/zzhmq;)[B
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/zzhmq;->zzd()Lcom/google/android/gms/internal/ads/zzhsn;

    move-result-object p0

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsn;->zzc:Lcom/google/android/gms/internal/ads/zzhsn;

    invoke-virtual {p0, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    new-array p0, p0, [B

    aput-byte v0, p0, v0

    return-object p0

    :cond_0
    new-array p0, v0, [B

    return-object p0
.end method


# virtual methods
.method public final zza([B[B)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhxj;->zzb:[B

    array-length v1, v0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/zzhxj;->zzc:[B

    array-length v2, v2

    if-nez v2, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhxj;->zza:Lcom/google/android/gms/internal/ads/zzhdh;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhdh;->zza([B[B)V

    return-void

    :cond_0
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhnc;->zze([B[B)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhxj;->zzc:[B

    array-length v2, v0

    if-eqz v2, :cond_1

    filled-new-array {p2, v0}, [[B

    move-result-object p2

    invoke-static {p2}, Lcom/google/android/gms/internal/ads/zzhyk;->zza([[B)[B

    move-result-object p2

    :cond_1
    array-length v0, p1

    invoke-static {p1, v1, v0}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object p1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhxj;->zza:Lcom/google/android/gms/internal/ads/zzhdh;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzhdh;->zza([B[B)V

    return-void

    :cond_2
    new-instance p1, Ljava/security/GeneralSecurityException;

    const-string p2, "Invalid signature (output prefix mismatch)"

    invoke-direct {p1, p2}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
