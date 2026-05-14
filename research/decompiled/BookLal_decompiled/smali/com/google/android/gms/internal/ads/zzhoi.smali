.class final synthetic Lcom/google/android/gms/internal/ads/zzhoi;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhna;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhoi;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhoi;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhoi;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhoi;->zza:Lcom/google/android/gms/internal/ads/zzhoi;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhom;->zza:Lcom/google/android/gms/internal/ads/zzhnz;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhnw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhnw;-><init>([B)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhnw;->zza(I)Lcom/google/android/gms/internal/ads/zzhnw;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhnw;->zzb(I)Lcom/google/android/gms/internal/ads/zzhnw;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhny;->zza:Lcom/google/android/gms/internal/ads/zzhny;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhnw;->zzc(Lcom/google/android/gms/internal/ads/zzhny;)Lcom/google/android/gms/internal/ads/zzhnw;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhnx;->zze:Lcom/google/android/gms/internal/ads/zzhnx;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhnw;->zzd(Lcom/google/android/gms/internal/ads/zzhnx;)Lcom/google/android/gms/internal/ads/zzhnw;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnw;->zze()Lcom/google/android/gms/internal/ads/zzhnz;

    move-result-object v0

    return-object v0
.end method
