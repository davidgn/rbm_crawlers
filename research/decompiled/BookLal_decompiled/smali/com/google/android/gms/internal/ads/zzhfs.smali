.class final synthetic Lcom/google/android/gms/internal/ads/zzhfs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhmi;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzhfs;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzhfs;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzhfs;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzhfs;->zza:Lcom/google/android/gms/internal/ads/zzhfs;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Lcom/google/android/gms/internal/ads/zzhco;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzhfy;

    sget v0, Lcom/google/android/gms/internal/ads/zzhft;->zza:I

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhfy;->zze()Lcom/google/android/gms/internal/ads/zzhga;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzhga;->zzc()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhdc;->zza(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/zzhdb;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhfy;->zze()Lcom/google/android/gms/internal/ads/zzhga;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzhdb;->zzb()Lcom/google/android/gms/internal/ads/zzhch;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzhfy;->zzc()Lcom/google/android/gms/internal/ads/zzhzy;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/zzhiy;->zzc(Lcom/google/android/gms/internal/ads/zzhch;Lcom/google/android/gms/internal/ads/zzhzy;)Lcom/google/android/gms/internal/ads/zzhch;

    move-result-object p1

    return-object p1
.end method
