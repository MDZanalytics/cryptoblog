#!/bin/bash
#55 9 * * * bash /home/pi/projects/cryptoblog/daily.sh
MYCMD=$(echo $0)
MYDIR=$(dirname $MYCMD)
cd $MYDIR

Rscript -e "rmarkdown::render('alerts.Rmd')" && \
scp -P 21098 alerts.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

scp -P 21098 index1.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/index.html

Rscript -e "rmarkdown::render('alerts_TRX.Rmd')" && \
scp -P 21098 alerts_TRX.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/altcoins/TRX

sleep 15m

Rscript -e "rmarkdown::render('coins.Rmd')"
cp coins.html crypto

Rscript -e "rmarkdown::render('ma_trading_btc.Rmd')" && \
  scp -P 21098 ma_trading_btc.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('ma_trading_eth.Rmd')" && \
  scp -P 21098 ma_trading_eth.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('ma_trading_ethbtc.Rmd')" && \
  scp -P 21098 ma_trading_ethbtc.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('ma_trading_weekly_btc.Rmd')" && \
  scp -P 21098 ma_trading_weekly_btc.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('ma_trading_weekly_eth.Rmd')" && \
  scp -P 21098 ma_trading_weekly_eth.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('ma_cross_btc.Rmd')" && \
  scp -P 21098 ma_cross_btc.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('ma_cross_eth.Rmd')" && \
  scp -P 21098 ma_cross_eth.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('dmi_trading_btc.Rmd')" && \
  scp -P 21098 dmi_trading_btc.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('dmi_trading_eth.Rmd')" && \
  scp -P 21098 dmi_trading_eth.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('tsi_trading_btc.Rmd')" && \
  scp -P 21098 tsi_trading_btc.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('tsi_trading_eth.Rmd')" && \
  scp -P 21098 tsi_trading_eth.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('rsi2_trading_btc.Rmd')" && \
  scp -P 21098 rsi2_trading_btc.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('rsi2_trading_eth.Rmd')" && \
  scp -P 21098 rsi2_trading_eth.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('stoch_trading_btc.Rmd')" && \
  scp -P 21098 stoch_trading_btc.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('stoch_trading_eth.Rmd')" && \
  scp -P 21098 stoch_trading_eth.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('stablecoincap.Rmd')" && \
  scp -P 21098 stablecoincap.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('rsi_watch.Rmd')" && \
  scp -P 21098 rsi_watch.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('risk_index.Rmd')" && \
  scp -P 21098 risk_index.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('volatility_size.Rmd')" && \
  scp -P 21098 volatility_size.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

Rscript -e "rmarkdown::render('temporal_change/ma_temporal2.Rmd')" && \
  scp -P 21098 temporal_change/ma_temporal2.html mdzascfs@mdz-analytics.com:/home/mdzascfs/public_html/crypto

cd coin_script
Rscript -e "rmarkdown::render('coin_script.Rmd')"

