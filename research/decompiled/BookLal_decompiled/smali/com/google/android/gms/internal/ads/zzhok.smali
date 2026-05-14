.class final synthetic Lcom/google/android/gms/internal/ads/zzhok;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhna;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhok;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhok;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhok;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhok;->zza:Lcom/google/android/gms/internal/ads/zzhok;

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

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhnj;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhnj;-><init>([B)V

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhnj;->zza(I)Lcom/google/android/gms/internal/ads/zzhnj;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhnj;->zzb(I)Lcom/google/android/gms/internal/ads/zzhnj;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhnk;->zza:Lcom/google/android/gms/internal/ads/zzhnk;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhnj;->zzc(Lcom/google/android/gms/internal/ads/zzhnk;)Lcom/google/android/gms/internal/ads/zzhnj;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhnj;->zzd()Lcom/google/android/gms/internal/ads/zzhnl;

    move-result-object v0

    return-object v0
.end method
