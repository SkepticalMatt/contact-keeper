import React, { useContext } from 'react';
import AlertContext from '../../context/alert/alertContext';
import { CSSTransition, TransitionGroup } from 'react-transition-group';

const Alerts = () => {
  const alertContext = useContext(AlertContext);
  const { alerts } = alertContext;

  return (
    alerts.length > 0 && (
      <TransitionGroup>
        {alerts.map((alert) => (
          <CSSTransition key={alert.id} timeout={1000} classNames='item'>
            <div className={`alert alert-${alert.type}`}>
              <i className='fas fa-info-circle'></i> {alert.msg}
            </div>
          </CSSTransition>
        ))}
      </TransitionGroup>
    )
  );
};

export default Alerts;
