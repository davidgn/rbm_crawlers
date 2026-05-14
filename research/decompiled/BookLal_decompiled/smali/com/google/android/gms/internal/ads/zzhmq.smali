.class public final Lcom/google/android/gms/internal/ads/zzhmq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhmv;


# instance fields
.field private final zza:Ljava/lang/String;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzhzy;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzibz;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhrq;

.field private final zze:Lcom/google/android/gms/internal/ads/zzhsn;

.field private final zzf:Ljava/lang/Integer;


# direct methods
.method private constructor <init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhzy;Lcom/google/android/gms/internal/ads/zzibz;Lcom/google/android/gms/internal/ads/zzhrq;Lcom/google/android/gms/internal/ads/zzhsn;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzhmq;->zza:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzhmq;->zzb:Lcom/google/android/gms/internal/ads/zzhzy;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzhmq;->zzc:Lcom/google/android/gms/internal/ads/zzibz;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzhmq;->zzd:Lcom/google/android/gms/internal/ads/zzhrq;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzhmq;->zze:Lcom/google/android/gms/internal/ads/zzhsn;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/zzhmq;->zzf:Ljava/lang/Integer;

    return-void
.end method

.method public static zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzibz;Lcom/google/android/gms/internal/ads/zzhrq;Lcom/google/android/gms/internal/ads/zzhsn;Ljava/lang/Integer;)Lcom/google/android/gms/internal/ads/zzhmq;
    .locals 8

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhsn;->zzd:Lcom/google/android/gms/internal/ads/zzhsn;

    if-ne p3, v0, :cond_1

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Keys with output prefix type raw should not have an id requirement."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    if-eqz p4, :cond_2

    :goto_0
    invoke-static {p0}, Lcom/google/android/gms/internal/ads/zzhnc;->zzb(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object v2

    new-instance v7, Lcom/google/android/gms/internal/ads/zzhmq;

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/ads/zzhmq;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzhzy;Lcom/google/android/gms/internal/ads/zzibz;Lcom/google/android/gms/internal/ads/zzhrq;Lcom/google/android/gms/internal/ads/zzhsn;Ljava/lang/Integer;)V

    return-object v7

    :cond_2
    new-instance p0, Ljava/security/GeneralSecurityException;

    const-string p1, "Keys with output prefix type different from raw should have an id requirement."

    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public final zzb()Lcom/google/android/gms/internal/ads/zzibz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmq;->zzc:Lcom/google/android/gms/internal/ads/zzibz;

    return-object v0
.end method

.method public final zzc()Lcom/google/android/gms/internal/ads/zzhrq;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmq;->zzd:Lcom/google/android/gms/internal/ads/zzhrq;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/gms/internal/ads/zzhsn;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmq;->zze:Lcom/google/android/gms/internal/ads/zzhsn;

    return-object v0
.end method

.method public final zze()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmq;->zzf:Ljava/lang/Integer;

    return-object v0
.end method

.method public final zzf()Lcom/google/android/gms/internal/ads/zzhzy;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmq;->zzb:Lcom/google/android/gms/internal/ads/zzhzy;

    return-object v0
.end method

.method public final zzg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzhmq;->zza:Ljava/lang/String;

    return-object v0
.end method
