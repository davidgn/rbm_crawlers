.class final synthetic Lcom/google/android/gms/internal/ads/zzhut;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhna;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhut;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhut;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhut;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhut;->zza:Lcom/google/android/gms/internal/ads/zzhut;

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

    sget-object v0, Lcom/google/android/gms/internal/ads/zzhwd;->zza:Ljava/math/BigInteger;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhwa;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/zzhwa;-><init>([B)V

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhwb;->zzc:Lcom/google/android/gms/internal/ads/zzhwb;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhwa;->zzd(Lcom/google/android/gms/internal/ads/zzhwb;)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhwa;->zze(Lcom/google/android/gms/internal/ads/zzhwb;)Lcom/google/android/gms/internal/ads/zzhwa;

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhwa;->zzf(I)Lcom/google/android/gms/internal/ads/zzhwa;

    const/16 v1, 0x1000

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhwa;->zza(I)Lcom/google/android/gms/internal/ads/zzhwa;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhwd;->zza:Ljava/math/BigInteger;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhwa;->zzb(Ljava/math/BigInteger;)Lcom/google/android/gms/internal/ads/zzhwa;

    sget-object v1, Lcom/google/android/gms/internal/ads/zzhwc;->zza:Lcom/google/android/gms/internal/ads/zzhwc;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/zzhwa;->zzc(Lcom/google/android/gms/internal/ads/zzhwc;)Lcom/google/android/gms/internal/ads/zzhwa;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhwa;->zzg()Lcom/google/android/gms/internal/ads/zzhwd;

    move-result-object v0

    return-object v0
.end method
