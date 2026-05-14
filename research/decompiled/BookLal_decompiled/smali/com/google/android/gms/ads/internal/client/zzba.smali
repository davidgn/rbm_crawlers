.class public final Lcom/google/android/gms/ads/internal/client/zzba;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/ads/internal/client/zzba;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzbhn;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbho;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzbht;

.field private final zze:Lcom/google/android/gms/internal/ads/zzbhe;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/ads/internal/client/zzba;

    invoke-direct {v0}, Lcom/google/android/gms/ads/internal/client/zzba;-><init>()V

    sput-object v0, Lcom/google/android/gms/ads/internal/client/zzba;->zza:Lcom/google/android/gms/ads/internal/client/zzba;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbhn;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzbhn;-><init>()V

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbho;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/zzbho;-><init>()V

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbht;

    invoke-direct {v2}, Lcom/google/android/gms/internal/ads/zzbht;-><init>()V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbhe;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/zzbhe;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/ads/internal/client/zzba;->zzb:Lcom/google/android/gms/internal/ads/zzbhn;

    iput-object v1, p0, Lcom/google/android/gms/ads/internal/client/zzba;->zzc:Lcom/google/android/gms/internal/ads/zzbho;

    iput-object v2, p0, Lcom/google/android/gms/ads/internal/client/zzba;->zzd:Lcom/google/android/gms/internal/ads/zzbht;

    iput-object v3, p0, Lcom/google/android/gms/ads/internal/client/zzba;->zze:Lcom/google/android/gms/internal/ads/zzbhe;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zzbho;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzba;->zza:Lcom/google/android/gms/ads/internal/client/zzba;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzba;->zzc:Lcom/google/android/gms/internal/ads/zzbho;

    return-object v0
.end method

.method public static zzb()Lcom/google/android/gms/internal/ads/zzbhn;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzba;->zza:Lcom/google/android/gms/ads/internal/client/zzba;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzba;->zzb:Lcom/google/android/gms/internal/ads/zzbhn;

    return-object v0
.end method

.method public static zzc()Lcom/google/android/gms/internal/ads/zzbht;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzba;->zza:Lcom/google/android/gms/ads/internal/client/zzba;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzba;->zzd:Lcom/google/android/gms/internal/ads/zzbht;

    return-object v0
.end method

.method public static zzd()Lcom/google/android/gms/internal/ads/zzbhe;
    .locals 1

    sget-object v0, Lcom/google/android/gms/ads/internal/client/zzba;->zza:Lcom/google/android/gms/ads/internal/client/zzba;

    iget-object v0, v0, Lcom/google/android/gms/ads/internal/client/zzba;->zze:Lcom/google/android/gms/internal/ads/zzbhe;

    return-object v0
.end method
