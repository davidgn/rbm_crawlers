.class final Lcom/google/android/gms/internal/ads/zziey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:Lcom/google/android/gms/internal/ads/zziey;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzifh;

.field private final zzc:Ljava/util/concurrent/ConcurrentMap;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/zziey;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zziey;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/zziey;->zza:Lcom/google/android/gms/internal/ads/zziey;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziey;->zzc:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/google/android/gms/internal/ads/zzief;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzief;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zziey;->zzb:Lcom/google/android/gms/internal/ads/zzifh;

    return-void
.end method

.method public static zza()Lcom/google/android/gms/internal/ads/zziey;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zziey;->zza:Lcom/google/android/gms/internal/ads/zziey;

    return-object v0
.end method


# virtual methods
.method public final zzb(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzifg;
    .locals 2

    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/zzidq;->zza(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zziey;->zzc:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/ads/zzifg;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zziey;->zzb:Lcom/google/android/gms/internal/ads/zzifh;

    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzifh;->zza(Ljava/lang/Class;)Lcom/google/android/gms/internal/ads/zzifg;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/internal/ads/zzifg;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    return-object v1
.end method
