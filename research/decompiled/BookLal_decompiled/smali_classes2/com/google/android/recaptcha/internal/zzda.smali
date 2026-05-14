.class public final Lcom/google/android/recaptcha/internal/zzda;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final zza:Lcom/google/android/recaptcha/internal/zzct;


# instance fields
.field public zzb:Lt4/k;

.field private final zzc:Landroid/webkit/WebView;

.field private final zzd:Ljava/lang/String;

.field private final zze:Landroid/content/Context;

.field private final zzf:Lcom/google/android/recaptcha/internal/zzr;

.field private final zzg:Ljava/lang/String;

.field private final zzh:Ljava/lang/String;

.field private final zzi:Lcom/google/android/recaptcha/internal/zzaj;

.field private final zzj:Ljava/util/Map;

.field private final zzk:Ljava/util/Map;

.field private final zzl:Ljava/util/Map;

.field private final zzm:Lcom/google/android/recaptcha/internal/zzas;

.field private final zzn:Lcom/google/android/recaptcha/internal/zzdk;

.field private final zzo:LB4/a;

.field private final zzp:Lcom/google/android/recaptcha/internal/zzcu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/google/android/recaptcha/internal/zzct;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/android/recaptcha/internal/zzct;-><init>(Lkotlin/jvm/internal/e;)V

    sput-object v0, Lcom/google/android/recaptcha/internal/zzda;->zza:Lcom/google/android/recaptcha/internal/zzct;

    return-void
.end method

.method public constructor <init>(Landroid/webkit/WebView;Ljava/lang/String;Landroid/content/Context;Lcom/google/android/recaptcha/internal/zzr;Ljava/lang/String;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzaj;Lt4/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzda;->zzc:Landroid/webkit/WebView;

    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzda;->zzd:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zzda;->zze:Landroid/content/Context;

    iput-object p4, p0, Lcom/google/android/recaptcha/internal/zzda;->zzf:Lcom/google/android/recaptcha/internal/zzr;

    iput-object p5, p0, Lcom/google/android/recaptcha/internal/zzda;->zzg:Ljava/lang/String;

    iput-object p6, p0, Lcom/google/android/recaptcha/internal/zzda;->zzh:Ljava/lang/String;

    iput-object p7, p0, Lcom/google/android/recaptcha/internal/zzda;->zzi:Lcom/google/android/recaptcha/internal/zzaj;

    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzda;->zzk:Ljava/util/Map;

    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzda;->zzl:Ljava/util/Map;

    new-instance p2, Lcom/google/android/recaptcha/internal/zzba;

    new-instance p4, Lcom/google/android/recaptcha/internal/zzbc;

    invoke-direct {p4, p1, p8}, Lcom/google/android/recaptcha/internal/zzbc;-><init>(Landroid/webkit/WebView;Lt4/u;)V

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzp;->zzc()Lt4/u;

    move-result-object p5

    invoke-direct {p2, p4, p5, p3}, Lcom/google/android/recaptcha/internal/zzba;-><init>(Lcom/google/android/recaptcha/internal/zzbc;Lt4/u;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzda;->zzm:Lcom/google/android/recaptcha/internal/zzas;

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzdk;->zzc()Lcom/google/android/recaptcha/internal/zzdk;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzda;->zzn:Lcom/google/android/recaptcha/internal/zzdk;

    invoke-static {}, LB4/e;->a()LB4/d;

    move-result-object p2

    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzda;->zzo:LB4/a;

    new-instance p2, Lcom/google/android/recaptcha/internal/zzcu;

    invoke-direct {p2, p0}, Lcom/google/android/recaptcha/internal/zzcu;-><init>(Lcom/google/android/recaptcha/internal/zzda;)V

    iput-object p2, p0, Lcom/google/android/recaptcha/internal/zzda;->zzp:Lcom/google/android/recaptcha/internal/zzcu;

    invoke-static {}, Lcom/google/android/recaptcha/internal/zzda;->zzq()Ljava/util/Map;

    move-result-object p3

    iput-object p3, p0, Lcom/google/android/recaptcha/internal/zzda;->zzj:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object p3

    const/4 p4, 0x1

    invoke-virtual {p3, p4}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    const-string p3, "RN"

    invoke-virtual {p1, p2, p3}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p2, Lcom/google/android/recaptcha/internal/zzcs;

    invoke-direct {p2, p0}, Lcom/google/android/recaptcha/internal/zzcs;-><init>(Lcom/google/android/recaptcha/internal/zzda;)V

    invoke-virtual {p1, p2}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    return-void
.end method

.method public static final synthetic zza(Lcom/google/android/recaptcha/internal/zzda;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzda;->zze:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic zzc(Lcom/google/android/recaptcha/internal/zzda;)Lcom/google/android/recaptcha/internal/zzr;
    .locals 0

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzda;->zzf:Lcom/google/android/recaptcha/internal/zzr;

    return-object p0
.end method

.method public static final synthetic zze(Lcom/google/android/recaptcha/internal/zzda;)Lcom/google/android/recaptcha/internal/zzdk;
    .locals 0

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzda;->zzn:Lcom/google/android/recaptcha/internal/zzdk;

    return-object p0
.end method

.method public static final synthetic zzh(Lcom/google/android/recaptcha/internal/zzda;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzda;->zzg:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic zzi(Lcom/google/android/recaptcha/internal/zzda;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzda;->zzh:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic zzj(Lcom/google/android/recaptcha/internal/zzda;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzda;->zzd:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic zzk(Lcom/google/android/recaptcha/internal/zzda;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzda;->zzj:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic zzl(Lcom/google/android/recaptcha/internal/zzda;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzda;->zzk:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic zzn(Lcom/google/android/recaptcha/internal/zzda;)LB4/a;
    .locals 0

    iget-object p0, p0, Lcom/google/android/recaptcha/internal/zzda;->zzo:LB4/a;

    return-object p0
.end method

.method private final zzo(Ljava/lang/Exception;)Lcom/google/android/recaptcha/internal/zzh;
    .locals 2

    instance-of v0, p1, Lt4/s0;

    if-eqz v0, :cond_0

    new-instance p1, Lcom/google/android/recaptcha/internal/zzh;

    sget-object v0, Lcom/google/android/recaptcha/internal/zzf;->zzc:Lcom/google/android/recaptcha/internal/zzf;

    sget-object v1, Lcom/google/android/recaptcha/internal/zzd;->zzj:Lcom/google/android/recaptcha/internal/zzd;

    invoke-direct {p1, v0, v1}, Lcom/google/android/recaptcha/internal/zzh;-><init>(Lcom/google/android/recaptcha/internal/zzf;Lcom/google/android/recaptcha/internal/zzd;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/google/android/recaptcha/internal/zzh;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/google/android/recaptcha/internal/zzh;

    goto :goto_0

    :cond_1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzh;

    sget-object v0, Lcom/google/android/recaptcha/internal/zzf;->zzc:Lcom/google/android/recaptcha/internal/zzf;

    sget-object v1, Lcom/google/android/recaptcha/internal/zzd;->zzu:Lcom/google/android/recaptcha/internal/zzd;

    invoke-direct {p1, v0, v1}, Lcom/google/android/recaptcha/internal/zzh;-><init>(Lcom/google/android/recaptcha/internal/zzf;Lcom/google/android/recaptcha/internal/zzd;)V

    :goto_0
    return-object p1
.end method

.method private final zzp(Ljava/util/List;Lcom/google/android/recaptcha/internal/zzh;)V
    .locals 9

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/google/android/recaptcha/internal/zzkw;

    sget-object v0, Lcom/google/android/recaptcha/internal/zzai;->zza:Lcom/google/android/recaptcha/internal/zzai;

    new-instance v0, Lcom/google/android/recaptcha/internal/zzaf;

    iget-object v3, p0, Lcom/google/android/recaptcha/internal/zzda;->zzg:Ljava/lang/String;

    iget-object v5, p0, Lcom/google/android/recaptcha/internal/zzda;->zzh:Ljava/lang/String;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v4, v5

    invoke-direct/range {v1 .. v6}, Lcom/google/android/recaptcha/internal/zzaf;-><init>(Lcom/google/android/recaptcha/internal/zzkw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzh;->zzb()Lcom/google/android/recaptcha/internal/zzf;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/recaptcha/internal/zzf;->zza()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzh;->zza()Lcom/google/android/recaptcha/internal/zzd;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/recaptcha/internal/zzd;->zza()I

    move-result v5

    iget-object v6, p0, Lcom/google/android/recaptcha/internal/zzda;->zze:Landroid/content/Context;

    iget-object v7, p0, Lcom/google/android/recaptcha/internal/zzda;->zzf:Lcom/google/android/recaptcha/internal/zzr;

    const/4 v8, 0x0

    move-object v3, v0

    invoke-static/range {v3 .. v8}, Lcom/google/android/recaptcha/internal/zzai;->zzd(Lcom/google/android/recaptcha/internal/zzaf;Ljava/lang/String;ILandroid/content/Context;Lcom/google/android/recaptcha/internal/zzr;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static final zzq()Ljava/util/Map;
    .locals 17

    const/4 v0, -0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/android/recaptcha/internal/zzd;->zzA:Lcom/google/android/recaptcha/internal/zzd;

    new-instance v2, LY3/e;

    invoke-direct {v2, v0, v1}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/android/recaptcha/internal/zzd;->zzB:Lcom/google/android/recaptcha/internal/zzd;

    new-instance v3, LY3/e;

    invoke-direct {v3, v0, v1}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x6

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/android/recaptcha/internal/zzd;->zzw:Lcom/google/android/recaptcha/internal/zzd;

    new-instance v4, LY3/e;

    invoke-direct {v4, v0, v1}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, -0xb

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/android/recaptcha/internal/zzd;->zzy:Lcom/google/android/recaptcha/internal/zzd;

    new-instance v5, LY3/e;

    invoke-direct {v5, v0, v1}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, -0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/android/recaptcha/internal/zzd;->zzC:Lcom/google/android/recaptcha/internal/zzd;

    new-instance v6, LY3/e;

    invoke-direct {v6, v0, v1}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, -0xe

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/android/recaptcha/internal/zzd;->zzD:Lcom/google/android/recaptcha/internal/zzd;

    new-instance v7, LY3/e;

    invoke-direct {v7, v0, v1}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/android/recaptcha/internal/zzd;->zzx:Lcom/google/android/recaptcha/internal/zzd;

    new-instance v8, LY3/e;

    invoke-direct {v8, v0, v1}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x7

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/android/recaptcha/internal/zzd;->zzE:Lcom/google/android/recaptcha/internal/zzd;

    new-instance v9, LY3/e;

    invoke-direct {v9, v0, v1}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x5

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/android/recaptcha/internal/zzd;->zzF:Lcom/google/android/recaptcha/internal/zzd;

    new-instance v10, LY3/e;

    invoke-direct {v10, v0, v1}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, -0x9

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/android/recaptcha/internal/zzd;->zzG:Lcom/google/android/recaptcha/internal/zzd;

    new-instance v11, LY3/e;

    invoke-direct {v11, v0, v1}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/android/recaptcha/internal/zzd;->zzQ:Lcom/google/android/recaptcha/internal/zzd;

    new-instance v12, LY3/e;

    invoke-direct {v12, v0, v1}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, -0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/android/recaptcha/internal/zzd;->zzz:Lcom/google/android/recaptcha/internal/zzd;

    new-instance v13, LY3/e;

    invoke-direct {v13, v0, v1}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/android/recaptcha/internal/zzd;->zzH:Lcom/google/android/recaptcha/internal/zzd;

    new-instance v14, LY3/e;

    invoke-direct {v14, v0, v1}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v0, -0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/android/recaptcha/internal/zzd;->zzJ:Lcom/google/android/recaptcha/internal/zzd;

    new-instance v15, LY3/e;

    invoke-direct {v15, v0, v1}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v0, -0xa

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v1, Lcom/google/android/recaptcha/internal/zzd;->zzK:Lcom/google/android/recaptcha/internal/zzd;

    move-object/from16 v16, v15

    new-instance v15, LY3/e;

    invoke-direct {v15, v0, v1}, LY3/e;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v15

    move-object/from16 v15, v16

    move-object/from16 v16, v0

    filled-new-array/range {v2 .. v16}, [LY3/e;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedHashMap;

    const/16 v2, 0xf

    invoke-static {v2}, LZ3/s;->K(I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/LinkedHashMap;-><init>(I)V

    invoke-static {v1, v0}, LZ3/s;->M(Ljava/util/LinkedHashMap;[LY3/e;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, -0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/google/android/recaptcha/internal/zzd;->zzI:Lcom/google/android/recaptcha/internal/zzd;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/google/android/recaptcha/internal/zzd;->zzM:Lcom/google/android/recaptcha/internal/zzd;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/google/android/recaptcha/internal/zzd;->zzN:Lcom/google/android/recaptcha/internal/zzd;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/google/android/recaptcha/internal/zzd;->zzO:Lcom/google/android/recaptcha/internal/zzd;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v3, Lcom/google/android/recaptcha/internal/zzd;->zzP:Lcom/google/android/recaptcha/internal/zzd;

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v2, 0x1d

    if-lt v0, v2, :cond_0

    const/4 v0, 0x4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sget-object v2, Lcom/google/android/recaptcha/internal/zzd;->zzL:Lcom/google/android/recaptcha/internal/zzd;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v1
.end method


# virtual methods
.method public final zzb()Landroid/webkit/WebView;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzda;->zzc:Landroid/webkit/WebView;

    return-object v0
.end method

.method public final zzd()Lcom/google/android/recaptcha/internal/zzas;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzda;->zzm:Lcom/google/android/recaptcha/internal/zzas;

    return-object v0
.end method

.method public final zzf(Lcom/google/android/recaptcha/RecaptchaAction;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 11

    instance-of v0, p2, Lcom/google/android/recaptcha/internal/zzcv;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/google/android/recaptcha/internal/zzcv;

    iget v1, v0, Lcom/google/android/recaptcha/internal/zzcv;->zzc:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/recaptcha/internal/zzcv;->zzc:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/recaptcha/internal/zzcv;

    invoke-direct {v0, p0, p2}, Lcom/google/android/recaptcha/internal/zzcv;-><init>(Lcom/google/android/recaptcha/internal/zzda;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p2, v0, Lcom/google/android/recaptcha/internal/zzcv;->zza:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, Lcom/google/android/recaptcha/internal/zzcv;->zzc:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Lcom/google/android/recaptcha/internal/zzcv;->zze:Ljava/lang/String;

    iget-object v0, v0, Lcom/google/android/recaptcha/internal/zzcv;->zzd:Lcom/google/android/recaptcha/internal/zzda;

    :try_start_0
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    goto/16 :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p2}, LS4/b;->E(Ljava/lang/Object;)V

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p2

    invoke-virtual {p2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object p2

    sget-object v2, Lcom/google/android/recaptcha/internal/zzai;->zza:Lcom/google/android/recaptcha/internal/zzai;

    new-instance v2, Lcom/google/android/recaptcha/internal/zzaf;

    sget-object v5, Lcom/google/android/recaptcha/internal/zzkw;->zzh:Lcom/google/android/recaptcha/internal/zzkw;

    iget-object v6, p0, Lcom/google/android/recaptcha/internal/zzda;->zzg:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/recaptcha/internal/zzda;->zzh:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v4, v2

    move-object v8, p2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/recaptcha/internal/zzaf;-><init>(Lcom/google/android/recaptcha/internal/zzkw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/recaptcha/internal/zzda;->zzd:Ljava/lang/String;

    new-instance v5, Lcom/google/android/recaptcha/internal/zzs;

    invoke-direct {v5}, Lcom/google/android/recaptcha/internal/zzs;-><init>()V

    invoke-static {v2, v4, v5}, Lcom/google/android/recaptcha/internal/zzai;->zzb(Lcom/google/android/recaptcha/internal/zzaf;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzs;)V

    new-instance v2, Lcom/google/android/recaptcha/internal/zzaf;

    sget-object v5, Lcom/google/android/recaptcha/internal/zzkw;->zzf:Lcom/google/android/recaptcha/internal/zzkw;

    iget-object v6, p0, Lcom/google/android/recaptcha/internal/zzda;->zzg:Ljava/lang/String;

    iget-object v7, p0, Lcom/google/android/recaptcha/internal/zzda;->zzh:Ljava/lang/String;

    move-object v4, v2

    invoke-direct/range {v4 .. v9}, Lcom/google/android/recaptcha/internal/zzaf;-><init>(Lcom/google/android/recaptcha/internal/zzkw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/recaptcha/internal/zzda;->zzd:Ljava/lang/String;

    new-instance v5, Lcom/google/android/recaptcha/internal/zzs;

    invoke-direct {v5}, Lcom/google/android/recaptcha/internal/zzs;-><init>()V

    invoke-static {v2, v4, v5}, Lcom/google/android/recaptcha/internal/zzai;->zzb(Lcom/google/android/recaptcha/internal/zzaf;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzs;)V

    :try_start_1
    new-instance v2, Lcom/google/android/recaptcha/internal/zzcw;

    const/4 v4, 0x0

    invoke-direct {v2, p1, p0, p2, v4}, Lcom/google/android/recaptcha/internal/zzcw;-><init>(Lcom/google/android/recaptcha/RecaptchaAction;Lcom/google/android/recaptcha/internal/zzda;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/google/android/recaptcha/internal/zzcv;->zzd:Lcom/google/android/recaptcha/internal/zzda;

    iput-object p2, v0, Lcom/google/android/recaptcha/internal/zzcv;->zze:Ljava/lang/String;

    iput v3, v0, Lcom/google/android/recaptcha/internal/zzcv;->zzc:I

    const-wide/16 v3, 0x1388

    invoke-static {v3, v4, v2, v0}, Lt4/w;->s(JLkotlin/jvm/functions/Function2;Ld4/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eq p1, v1, :cond_3

    move-object v0, p0

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    :goto_1
    :try_start_2
    check-cast p2, Ljava/lang/String;

    sget-object v1, Lcom/google/android/recaptcha/internal/zzai;->zza:Lcom/google/android/recaptcha/internal/zzai;

    new-instance v1, Lcom/google/android/recaptcha/internal/zzaf;

    sget-object v3, Lcom/google/android/recaptcha/internal/zzkw;->zzh:Lcom/google/android/recaptcha/internal/zzkw;

    iget-object v4, v0, Lcom/google/android/recaptcha/internal/zzda;->zzg:Ljava/lang/String;

    iget-object v5, v0, Lcom/google/android/recaptcha/internal/zzda;->zzh:Ljava/lang/String;

    const/4 v7, 0x0

    move-object v2, v1

    move-object v6, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/android/recaptcha/internal/zzaf;-><init>(Lcom/google/android/recaptcha/internal/zzkw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/google/android/recaptcha/internal/zzda;->zze:Landroid/content/Context;

    iget-object v3, v0, Lcom/google/android/recaptcha/internal/zzda;->zzf:Lcom/google/android/recaptcha/internal/zzr;

    invoke-static {v1, v2, v3}, Lcom/google/android/recaptcha/internal/zzai;->zzc(Lcom/google/android/recaptcha/internal/zzaf;Landroid/content/Context;Lcom/google/android/recaptcha/internal/zzr;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :cond_3
    return-object v1

    :catch_1
    move-exception p1

    move-object v0, p0

    move-object v10, p2

    move-object p2, p1

    move-object p1, v10

    :goto_2
    sget-object v1, Lcom/google/android/recaptcha/internal/zzkw;->zzh:Lcom/google/android/recaptcha/internal/zzkw;

    invoke-static {v1}, LZ2/l;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, p2}, Lcom/google/android/recaptcha/internal/zzda;->zzo(Ljava/lang/Exception;)Lcom/google/android/recaptcha/internal/zzh;

    move-result-object p2

    invoke-direct {v0, v1, p2}, Lcom/google/android/recaptcha/internal/zzda;->zzp(Ljava/util/List;Lcom/google/android/recaptcha/internal/zzh;)V

    invoke-virtual {p2}, Lcom/google/android/recaptcha/internal/zzh;->zzc()Lcom/google/android/recaptcha/RecaptchaException;

    move-result-object p2

    iget-object v0, v0, Lcom/google/android/recaptcha/internal/zzda;->zzk:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lt4/e;

    if-eqz p1, :cond_4

    invoke-interface {p1, p2}, Lt4/e;->g(Ljava/lang/Throwable;)Z

    :cond_4
    invoke-static {p2}, LS4/b;->j(Ljava/lang/Throwable;)LY3/f;

    move-result-object p2

    :goto_3
    return-object p2
.end method

.method public final zzg(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 10

    instance-of v0, p1, Lcom/google/android/recaptcha/internal/zzcx;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/recaptcha/internal/zzcx;

    iget v1, v0, Lcom/google/android/recaptcha/internal/zzcx;->zzc:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/google/android/recaptcha/internal/zzcx;->zzc:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/android/recaptcha/internal/zzcx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/recaptcha/internal/zzcx;-><init>(Lcom/google/android/recaptcha/internal/zzda;Lkotlin/coroutines/Continuation;)V

    :goto_0
    iget-object p1, v0, Lcom/google/android/recaptcha/internal/zzcx;->zza:Ljava/lang/Object;

    sget-object v1, Lc4/a;->a:Lc4/a;

    iget v2, v0, Lcom/google/android/recaptcha/internal/zzcx;->zzc:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Lcom/google/android/recaptcha/internal/zzcx;->zzd:Lcom/google/android/recaptcha/internal/zzda;

    :try_start_0
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    invoke-static {p1}, LS4/b;->E(Ljava/lang/Object;)V

    sget-object p1, Lcom/google/android/recaptcha/internal/zzai;->zza:Lcom/google/android/recaptcha/internal/zzai;

    new-instance p1, Lcom/google/android/recaptcha/internal/zzaf;

    sget-object v5, Lcom/google/android/recaptcha/internal/zzkw;->zzb:Lcom/google/android/recaptcha/internal/zzkw;

    iget-object v6, p0, Lcom/google/android/recaptcha/internal/zzda;->zzg:Ljava/lang/String;

    iget-object v8, p0, Lcom/google/android/recaptcha/internal/zzda;->zzh:Ljava/lang/String;

    const/4 v9, 0x0

    move-object v4, p1

    move-object v7, v8

    invoke-direct/range {v4 .. v9}, Lcom/google/android/recaptcha/internal/zzaf;-><init>(Lcom/google/android/recaptcha/internal/zzkw;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/google/android/recaptcha/internal/zzda;->zzd:Ljava/lang/String;

    new-instance v4, Lcom/google/android/recaptcha/internal/zzs;

    invoke-direct {v4}, Lcom/google/android/recaptcha/internal/zzs;-><init>()V

    invoke-static {p1, v2, v4}, Lcom/google/android/recaptcha/internal/zzai;->zzb(Lcom/google/android/recaptcha/internal/zzaf;Ljava/lang/String;Lcom/google/android/recaptcha/internal/zzs;)V

    new-instance p1, Lt4/l;

    invoke-direct {p1, v3}, Lt4/g0;-><init>(Z)V

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Lt4/g0;->D(Lt4/W;)V

    iput-object p1, p0, Lcom/google/android/recaptcha/internal/zzda;->zzb:Lt4/k;

    invoke-virtual {p0}, Lcom/google/android/recaptcha/internal/zzda;->zzm()Lt4/k;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p1}, Ljava/lang/Integer;-><init>(I)V

    :try_start_1
    new-instance p1, Lcom/google/android/recaptcha/internal/zzcz;

    invoke-direct {p1, p0, v2}, Lcom/google/android/recaptcha/internal/zzcz;-><init>(Lcom/google/android/recaptcha/internal/zzda;Lkotlin/coroutines/Continuation;)V

    iput-object p0, v0, Lcom/google/android/recaptcha/internal/zzcx;->zzd:Lcom/google/android/recaptcha/internal/zzda;

    iput v3, v0, Lcom/google/android/recaptcha/internal/zzcx;->zzc:I

    const-wide/16 v2, 0x2710

    invoke-static {v2, v3, p1, v0}, Lt4/w;->s(JLkotlin/jvm/functions/Function2;Ld4/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eq p1, v1, :cond_3

    move-object v0, p0

    :goto_1
    :try_start_2
    check-cast p1, LY3/g;

    iget-object p1, p1, LY3/g;->a:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_7

    :cond_3
    return-object v1

    :catch_1
    move-exception p1

    move-object v0, p0

    :goto_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    instance-of v1, p1, Lt4/s0;

    if-eqz v1, :cond_4

    sget-object v2, Lcom/google/android/recaptcha/internal/zzkw;->zze:Lcom/google/android/recaptcha/internal/zzkw;

    sget-object v3, Lcom/google/android/recaptcha/internal/zzkw;->zzc:Lcom/google/android/recaptcha/internal/zzkw;

    filled-new-array {v2, v3}, [Lcom/google/android/recaptcha/internal/zzkw;

    move-result-object v2

    invoke-static {v2}, LZ3/h;->Z([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    goto :goto_3

    :cond_4
    sget-object v2, Lcom/google/android/recaptcha/internal/zzkw;->zze:Lcom/google/android/recaptcha/internal/zzkw;

    invoke-static {v2}, LZ2/l;->E(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    :goto_3
    iget-object v3, v0, Lcom/google/android/recaptcha/internal/zzda;->zzp:Lcom/google/android/recaptcha/internal/zzcu;

    invoke-virtual {v3}, Lcom/google/android/recaptcha/internal/zzcu;->zza()Ljava/lang/Long;

    move-result-object v3

    if-nez v1, :cond_5

    goto :goto_5

    :cond_5
    if-nez v3, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, 0x1f40

    cmp-long v1, v3, v5

    if-lez v1, :cond_7

    :goto_4
    new-instance p1, Lcom/google/android/recaptcha/internal/zzh;

    sget-object v1, Lcom/google/android/recaptcha/internal/zzf;->zze:Lcom/google/android/recaptcha/internal/zzf;

    sget-object v3, Lcom/google/android/recaptcha/internal/zzd;->zzT:Lcom/google/android/recaptcha/internal/zzd;

    invoke-direct {p1, v1, v3}, Lcom/google/android/recaptcha/internal/zzh;-><init>(Lcom/google/android/recaptcha/internal/zzf;Lcom/google/android/recaptcha/internal/zzd;)V

    goto :goto_6

    :cond_7
    :goto_5
    invoke-direct {v0, p1}, Lcom/google/android/recaptcha/internal/zzda;->zzo(Ljava/lang/Exception;)Lcom/google/android/recaptcha/internal/zzh;

    move-result-object p1

    :goto_6
    invoke-direct {v0, v2, p1}, Lcom/google/android/recaptcha/internal/zzda;->zzp(Ljava/util/List;Lcom/google/android/recaptcha/internal/zzh;)V

    invoke-virtual {p1}, Lcom/google/android/recaptcha/internal/zzh;->zzc()Lcom/google/android/recaptcha/RecaptchaException;

    move-result-object p1

    invoke-static {p1}, LS4/b;->j(Ljava/lang/Throwable;)LY3/f;

    move-result-object p1

    :goto_7
    return-object p1
.end method

.method public final zzm()Lt4/k;
    .locals 1

    iget-object v0, p0, Lcom/google/android/recaptcha/internal/zzda;->zzb:Lt4/k;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
