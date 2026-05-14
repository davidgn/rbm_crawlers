.class final synthetic Lcom/google/android/gms/internal/ads/zzhgy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhna;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhgy;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhgy;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhgy;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhgy;->zza:Lcom/google/android/gms/internal/ads/zzhgy;

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhgz;->zza:Lcom/google/android/gms/internal/ads/zzhfb;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhez;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhez;-><init>([B)V

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhez;->zzb(I)Lcom/google/android/gms/internal/ads/zzhez;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhez;->zza(I)Lcom/google/android/gms/internal/ads/zzhez;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhez;->zzc(I)Lcom/google/android/gms/internal/ads/zzhez;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhfa;->zza:Lcom/google/android/gms/internal/ads/zzhfa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhez;->zzd(Lcom/google/android/gms/internal/ads/zzhfa;)Lcom/google/android/gms/internal/ads/zzhez;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhez;->zze()Lcom/google/android/gms/internal/ads/zzhfb;

    move-result-object v0

    return-object v0
.end method
