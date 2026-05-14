.class public final Lcom/google/android/gms/internal/ads/zzbtw;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final zza:Lcom/google/android/gms/internal/ads/zzbsz;

.field private zzb:LN2/o;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/zzbsz;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zza:Lcom/google/android/gms/internal/ads/zzbsz;

    return-void
.end method

.method private final zzd()V
    .locals 4

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzb:LN2/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcfb;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/zzcfb;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzb:LN2/o;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zza:Lcom/google/android/gms/internal/ads/zzbsz;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/zzbsz;->zzb(Lcom/google/android/gms/internal/ads/zzazz;)Lcom/google/android/gms/internal/ads/zzbst;

    move-result-object v1

    new-instance v2, Lcom/google/android/gms/internal/ads/zzbtv;

    invoke-direct {v2, v0}, Lcom/google/android/gms/internal/ads/zzbtv;-><init>(Lcom/google/android/gms/internal/ads/zzcfb;)V

    new-instance v3, Lcom/google/android/gms/internal/ads/zzbts;

    invoke-direct {v3, v0}, Lcom/google/android/gms/internal/ads/zzbts;-><init>(Lcom/google/android/gms/internal/ads/zzcfb;)V

    invoke-virtual {v1, v2, v3}, Lcom/google/android/gms/internal/ads/zzcfi;->zze(Lcom/google/android/gms/internal/ads/zzcff;Lcom/google/android/gms/internal/ads/zzcfd;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtg;Lcom/google/android/gms/internal/ads/zzbtf;)Lcom/google/android/gms/internal/ads/zzbtz;
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbtw;->zzd()V

    new-instance p1, Lcom/google/android/gms/internal/ads/zzbtz;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzb:LN2/o;

    const-string v1, "google.afma.activeView.handleUpdate"

    invoke-direct {p1, v0, v1, p2, p3}, Lcom/google/android/gms/internal/ads/zzbtz;-><init>(LN2/o;Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbtg;Lcom/google/android/gms/internal/ads/zzbtf;)V

    return-object p1
.end method

.method public final zzb(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V
    .locals 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzbtw;->zzd()V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzb:LN2/o;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbtt;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbtt;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcew;->zzh:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzj(LN2/o;Lcom/google/android/gms/internal/ads/zzhad;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzb:LN2/o;

    return-void
.end method

.method public final zzc(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzb:LN2/o;

    new-instance v1, Lcom/google/android/gms/internal/ads/zzbtu;

    invoke-direct {v1, p1, p2}, Lcom/google/android/gms/internal/ads/zzbtu;-><init>(Ljava/lang/String;Lcom/google/android/gms/internal/ads/zzbov;)V

    sget-object p1, Lcom/google/android/gms/internal/ads/zzcew;->zzh:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-static {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzhav;->zzk(LN2/o;Lcom/google/android/gms/internal/ads/zzgsa;Ljava/util/concurrent/Executor;)LN2/o;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzbtw;->zzb:LN2/o;

    return-void
.end method
