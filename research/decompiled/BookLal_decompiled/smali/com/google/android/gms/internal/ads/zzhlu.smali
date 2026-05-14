.class final synthetic Lcom/google/android/gms/internal/ads/zzhlu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhna;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhlu;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhlu;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhlu;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhlu;->zza:Lcom/google/android/gms/internal/ads/zzhlu;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza()Ljava/lang/Object;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhlv;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhlv;-><init>()V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhlt;->zza:Lcom/google/android/gms/internal/ads/zzhlt;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzhkv;

    const-class v3, Lcom/google/android/gms/internal/ads/zzhld;

    const-class v4, Lcom/google/android/gms/internal/ads/zzhmq;

    invoke-direct {v2, v3, v4, v1}, Lcom/google/android/gms/internal/ads/zzhkv;-><init>(Ljava/lang/Class;Ljava/lang/Class;Lcom/google/android/gms/internal/ads/zzhkw;)V

    invoke-virtual {v0, v2}, Lcom/google/android/gms/internal/ads/zzhlv;->zzb(Lcom/google/android/gms/internal/ads/zzhkx;)V

    return-object v0
.end method
