.class public abstract Lcom/google/android/gms/internal/ads/zzfoh;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final zza:LN2/o;


# instance fields
.field private final zzb:Lcom/google/android/gms/internal/ads/zzhbf;

.field private final zzc:Ljava/util/concurrent/ScheduledExecutorService;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzfoi;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/internal/ads/zzfoh;->zza:LN2/o;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzhbf;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/zzfoi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzfoh;->zzb:Lcom/google/android/gms/internal/ads/zzhbf;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzfoh;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzfoh;->zzd:Lcom/google/android/gms/internal/ads/zzfoi;

    return-void
.end method

.method public static synthetic zzd()LN2/o;
    .locals 1

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfoh;->zza:LN2/o;

    return-object v0
.end method


# virtual methods
.method public final zza(Ljava/lang/Object;LN2/o;)Lcom/google/android/gms/internal/ads/zzfog;
    .locals 9

    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    new-instance v8, Lcom/google/android/gms/internal/ads/zzfog;

    const/4 v3, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move-object v1, p0

    move-object v2, p1

    move-object v4, p2

    move-object v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/google/android/gms/internal/ads/zzfog;-><init>(Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/Object;Ljava/lang/String;LN2/o;Ljava/util/List;LN2/o;[B)V

    return-object v8
.end method

.method public final varargs zzb(Ljava/lang/Object;[LN2/o;)Lcom/google/android/gms/internal/ads/zzfny;
    .locals 2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    new-instance v0, Lcom/google/android/gms/internal/ads/zzfny;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzfny;-><init>(Lcom/google/android/gms/internal/ads/zzfoh;Ljava/lang/Object;Ljava/util/List;[B)V

    return-object v0
.end method

.method public abstract zzc(Ljava/lang/Object;)Ljava/lang/String;
.end method

.method public final synthetic zze()Lcom/google/android/gms/internal/ads/zzhbf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoh;->zzb:Lcom/google/android/gms/internal/ads/zzhbf;

    return-object v0
.end method

.method public final synthetic zzf()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoh;->zzc:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public final synthetic zzg()Lcom/google/android/gms/internal/ads/zzfoi;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzfoh;->zzd:Lcom/google/android/gms/internal/ads/zzfoi;

    return-object v0
.end method
