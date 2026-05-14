.class final synthetic Lcom/google/android/gms/internal/ads/zzhgs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhna;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhgs;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhgs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgs;->zza:Lcom/google/android/gms/internal/ads/zzhgs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 3

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhgz;->zza:Lcom/google/android/gms/internal/ads/zzhfb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzheq;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzheq;-><init>([B)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzheq;->zzb(I)Lcom/google/android/gms/internal/ads/zzheq;

    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzheq;->zza(I)Lcom/google/android/gms/internal/ads/zzheq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzheq;->zzc(I)Lcom/google/android/gms/internal/ads/zzheq;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzher;->zza:Lcom/google/android/gms/internal/ads/zzher;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzheq;->zzd(Lcom/google/android/gms/internal/ads/zzher;)Lcom/google/android/gms/internal/ads/zzheq;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzheq;->zze()Lcom/google/android/gms/internal/ads/zzhes;

    move-result-object v0

    return-object v0
.end method
