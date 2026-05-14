.class public final Lcom/google/android/gms/internal/ads/zzeqg;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/internal/ads/zzekx;


# instance fields
.field private final zza:Landroid/content/Context;

.field private final zzb:Lcom/google/android/gms/internal/ads/zzcvv;

.field private final zzc:Lcom/google/android/gms/internal/ads/zzbiq;

.field private final zzd:Lcom/google/android/gms/internal/ads/zzhbf;

.field private final zze:Lcom/google/android/gms/internal/ads/zzfop;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzcvv;Lcom/google/android/gms/internal/ads/zzfop;Lcom/google/android/gms/internal/ads/zzhbf;Lcom/google/android/gms/internal/ads/zzbiq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqg;->zza:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzeqg;->zzb:Lcom/google/android/gms/internal/ads/zzcvv;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/zzeqg;->zze:Lcom/google/android/gms/internal/ads/zzfop;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/zzeqg;->zzd:Lcom/google/android/gms/internal/ads/zzhbf;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/zzeqg;->zzc:Lcom/google/android/gms/internal/ads/zzbiq;

    return-void
.end method


# virtual methods
.method public final zza(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;)Z
    .locals 0

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqg;->zzc:Lcom/google/android/gms/internal/ads/zzbiq;

    if-eqz p1, :cond_0

    iget-object p1, p2, Lcom/google/android/gms/internal/ads/zzfjk;->zzs:Lcom/google/android/gms/internal/ads/zzfjp;

    if-eqz p1, :cond_0

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/zzfjp;->zza:Ljava/lang/String;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final zzb(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;)LN2/o;
    .locals 7

    new-instance v6, Lcom/google/android/gms/internal/ads/zzeqc;

    new-instance v2, Landroid/view/View;

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqg;->zza:Landroid/content/Context;

    invoke-direct {v2, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/zzeqe;->zza:Lcom/google/android/gms/internal/ads/zzeqe;

    iget-object v0, p2, Lcom/google/android/gms/internal/ads/zzfjk;->zzu:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lcom/google/android/gms/internal/ads/zzfjl;

    const/4 v3, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/zzeqc;-><init>(Lcom/google/android/gms/internal/ads/zzeqg;Landroid/view/View;Lcom/google/android/gms/internal/ads/zzcjz;Lcom/google/android/gms/internal/ads/zzcww;Lcom/google/android/gms/internal/ads/zzfjl;)V

    new-instance v0, Lcom/google/android/gms/internal/ads/zzcxo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Lcom/google/android/gms/internal/ads/zzcxo;-><init>(Lcom/google/android/gms/internal/ads/zzfjv;Lcom/google/android/gms/internal/ads/zzfjk;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzeqg;->zzb:Lcom/google/android/gms/internal/ads/zzcvv;

    invoke-virtual {p1, v0, v6}, Lcom/google/android/gms/internal/ads/zzcvv;->zzf(Lcom/google/android/gms/internal/ads/zzcxo;Lcom/google/android/gms/internal/ads/zzcux;)Lcom/google/android/gms/internal/ads/zzcur;

    move-result-object p1

    new-instance v0, Lcom/google/android/gms/internal/ads/zzbil;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcur;->zzl()Lcom/google/android/gms/internal/ads/zzeqf;

    move-result-object v1

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfjk;->zzs:Lcom/google/android/gms/internal/ads/zzfjp;

    iget-object v2, p2, Lcom/google/android/gms/internal/ads/zzfjp;->zzb:Ljava/lang/String;

    iget-object p2, p2, Lcom/google/android/gms/internal/ads/zzfjp;->zza:Ljava/lang/String;

    invoke-direct {v0, v1, v2, p2}, Lcom/google/android/gms/internal/ads/zzbil;-><init>(Lcom/google/android/gms/ads/internal/zzg;Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/google/android/gms/internal/ads/zzfoj;->zzt:Lcom/google/android/gms/internal/ads/zzfoj;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/zzeqg;->zze:Lcom/google/android/gms/internal/ads/zzfop;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/google/android/gms/internal/ads/zzeqd;

    invoke-direct {v2, p0, v0}, Lcom/google/android/gms/internal/ads/zzeqd;-><init>(Lcom/google/android/gms/internal/ads/zzeqg;Lcom/google/android/gms/internal/ads/zzbil;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqg;->zzd:Lcom/google/android/gms/internal/ads/zzhbf;

    invoke-static {v2, v0, p2, v1}, Lcom/google/android/gms/internal/ads/zzfoa;->zzd(Lcom/google/android/gms/internal/ads/zzfnv;Lcom/google/android/gms/internal/ads/zzhbf;Ljava/lang/Object;Lcom/google/android/gms/internal/ads/zzfoh;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p2

    sget-object v0, Lcom/google/android/gms/internal/ads/zzfoj;->zzu:Lcom/google/android/gms/internal/ads/zzfoj;

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/zzfog;->zzj(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzcur;->zzi()Lcom/google/android/gms/internal/ads/zzcuq;

    move-result-object p1

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/zzhav;->zza(Ljava/lang/Object;)LN2/o;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/zzfog;->zze(LN2/o;)Lcom/google/android/gms/internal/ads/zzfog;

    move-result-object p1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/zzfog;->zzi()Lcom/google/android/gms/internal/ads/zzfnw;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic zzc(Lcom/google/android/gms/internal/ads/zzbil;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzeqg;->zzc:Lcom/google/android/gms/internal/ads/zzbiq;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/zzbiq;->zze(Lcom/google/android/gms/internal/ads/zzbin;)V

    return-void
.end method
