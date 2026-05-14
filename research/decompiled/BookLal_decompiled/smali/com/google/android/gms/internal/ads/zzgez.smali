.class final synthetic Lcom/google/android/gms/internal/ads/zzgez;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzhad;


# static fields
.field static final synthetic zza:Lcom/google/android/gms/internal/ads/zzgez;


# direct methods
.method public static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzgez;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzgez;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zzgez;->zza:Lcom/google/android/gms/internal/ads/zzgez;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic zza(Ljava/lang/Object;)LN2/o;
    .locals 2

    check-cast p1, Lcom/google/android/gms/internal/ads/zzgev;

    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/zzgev;->zzb()LN2/o;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/zzgfa;

    invoke-direct {v1, p1}, Lcom/google/android/gms/internal/ads/zzgfa;-><init>(Lcom/google/android/gms/internal/ads/zzgev;)V

    invoke-static {}, Lcom/google/android/gms/internal/ads/zzhbm;->zza()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzk(LN2/o;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    return-object p1
.end method
