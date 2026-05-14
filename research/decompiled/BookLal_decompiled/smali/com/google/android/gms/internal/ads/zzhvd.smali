.class final synthetic Lcom/google/android/gms/internal/ads/zzhvd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhna;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhvd;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhvd;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhvd;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhvd;->zza:Lcom/google/android/gms/internal/ads/zzhvd;

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvf;->zza:Lcom/google/android/gms/internal/ads/zzhtv;

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhvr;->zza:Ljava/math/BigInteger;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhvo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhvo;-><init>([B)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvp;->zza:Lcom/google/android/gms/internal/ads/zzhvp;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhvo;->zzd(Lcom/google/android/gms/internal/ads/zzhvp;)Lcom/google/android/gms/internal/ads/zzhvo;

    const/16 v1, 0xc00

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhvo;->zza(I)Lcom/google/android/gms/internal/ads/zzhvo;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvr;->zza:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhvo;->zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhvo;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhvq;->zzd:Lcom/google/android/gms/internal/ads/zzhvq;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhvo;->zzc(Lcom/google/android/gms/internal/ads/zzhvq;)Lcom/google/android/gms/internal/ads/zzhvo;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhvo;->zze()Lcom/google/android/gms/internal/ads/zzhvr;

    move-result-object v0

    return-object v0
.end method
